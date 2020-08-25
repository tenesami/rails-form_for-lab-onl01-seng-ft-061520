class SchoolClassesController < ApplicationController
    def new 
        @school_class = SchoolClass.new
    end

    def create 
        @school_class = SchoolClass.new(school_class_params(:title, :room_number))
        @school_class.save
        redirect_to school_class_path(@school_class)
    end
end
