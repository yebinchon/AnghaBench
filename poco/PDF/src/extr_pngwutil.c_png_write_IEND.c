
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* png_structp ;
typedef int png_size_t ;
struct TYPE_4__ {int mode; } ;


 int PNG_HAVE_IEND ;
 int PNG_IEND ;
 int png_IEND ;
 int png_bytep_NULL ;
 int png_debug (int,char*) ;
 int png_write_chunk (TYPE_1__*,int ,int ,int ) ;

void
png_write_IEND(png_structp png_ptr)
{



   png_debug(1, "in png_write_IEND\n");
   png_write_chunk(png_ptr, png_IEND, png_bytep_NULL,
     (png_size_t)0);
   png_ptr->mode |= PNG_HAVE_IEND;
}
