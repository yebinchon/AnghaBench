
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* png_structp ;
typedef scalar_t__ png_size_t ;
typedef int png_byte ;
struct TYPE_4__ {size_t sig_bytes; int mode; } ;


 int PNG_HAVE_PNG_SIGNATURE ;
 int png_write_data (TYPE_1__*,int*,scalar_t__) ;

void
png_write_sig(png_structp png_ptr)
{
   png_byte png_signature[8] = {137, 80, 78, 71, 13, 10, 26, 10};

   png_write_data(png_ptr, &png_signature[png_ptr->sig_bytes],
      (png_size_t)8 - png_ptr->sig_bytes);
   if(png_ptr->sig_bytes < 3)
      png_ptr->mode |= PNG_HAVE_PNG_SIGNATURE;
}
