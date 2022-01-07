
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* png_structp ;
typedef scalar_t__ png_size_t ;
typedef int png_bytep ;
struct TYPE_5__ {int (* read_data_fn ) (TYPE_1__*,int ,scalar_t__) ;} ;


 int png_debug1 (int,char*,int) ;
 int png_error (TYPE_1__*,char*) ;
 int stub1 (TYPE_1__*,int ,scalar_t__) ;

void
png_read_data(png_structp png_ptr, png_bytep data, png_size_t length)
{
   png_debug1(4,"reading %d bytes\n", (int)length);
   if (png_ptr->read_data_fn != ((void*)0))
      (*(png_ptr->read_data_fn))(png_ptr, data, length);
   else
      png_error(png_ptr, "Call to NULL read function");
}
