class ArtistsController < ApplicationController

    get '/artists' do
        @artists=Artist.all
        erb :"artists/index"
    end

    get "/artists/:slug" do
        name=Artist.find_by_slug(params[:slug])
        @artist=Artist.find_by(name: name)
        erb :"artists/show"
    end
    

end
