require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end
    get '/new' do
      erb :'/pirates/new'
    end
    post '/pirates' do
    # make a pirate and some boats
    puts params[:pirate][:ships]
    @p = Pirate.new(params[:pirate])
    @s1 = Ship.new(params[:pirate][:ships][0])
    @s2 = Ship.new(params[:pirate][:ships][1])
    erb :'pirates/show'
    end
  end
end
