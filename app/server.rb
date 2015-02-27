require 'sinatra/base'
require 'data_mapper'
require './app/lib/link'
require './app/lib/tag'
require './app/lib/user'
require './app/helpers/application.rb'
require 'rack-flash'
require 'sinatra/partial'
require './app/controller/links_controller.rb'
require './app/controller/tags_controller.rb'
require './app/controller/users_controller.rb'
require './app/controller/sessions_controller.rb'

class BookmarkManager < Sinatra::Base

  require_relative 'data_mapper_setup'

  helpers BookMarkUtils

  enable :sessions
  set :session_secret , 'super_secret'
  use Rack::Flash
  use Rack::MethodOverride
  register Sinatra::Partial
  set :partial_template_engine, :erb
  set :views, Proc.new { File.join( "./app/views") }

end

