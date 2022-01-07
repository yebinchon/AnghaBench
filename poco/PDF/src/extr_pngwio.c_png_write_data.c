
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* png_structp ;
typedef int png_size_t ;
typedef int png_bytep ;
struct TYPE_5__ {int (* write_data_fn ) (TYPE_1__*,int ,int ) ;} ;


 int png_error (TYPE_1__*,char*) ;
 int stub1 (TYPE_1__*,int ,int ) ;

void
png_write_data(png_structp png_ptr, png_bytep data, png_size_t length)
{
   if (png_ptr->write_data_fn != ((void*)0) )
      (*(png_ptr->write_data_fn))(png_ptr, data, length);
   else
      png_error(png_ptr, "Call to NULL write function");
}
