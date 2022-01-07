
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
typedef int png_const_bytep ;
struct TYPE_5__ {int (* write_data_fn ) (TYPE_1__*,int ,size_t) ;} ;


 int png_bytep ;
 int png_constcast (int ,int ) ;
 int png_error (TYPE_1__*,char*) ;
 int stub1 (TYPE_1__*,int ,size_t) ;

void
png_write_data(png_structrp png_ptr, png_const_bytep data, size_t length)
{

   if (png_ptr->write_data_fn != ((void*)0) )
      (*(png_ptr->write_data_fn))(png_ptr, png_constcast(png_bytep,data),
          length);

   else
      png_error(png_ptr, "Call to NULL write function");
}
