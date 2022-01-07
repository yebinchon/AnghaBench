
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* png_structp ;
struct TYPE_4__ {int (* output_flush_fn ) (TYPE_1__*) ;} ;


 int stub1 (TYPE_1__*) ;

void
png_flush(png_structp png_ptr)
{
   if (png_ptr->output_flush_fn != ((void*)0))
      (*(png_ptr->output_flush_fn))(png_ptr);
}
