
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_structp ;
typedef int png_infop ;
struct TYPE_6__ {int mode; } ;


 int PNG_AFTER_IDAT ;
 int PNG_HAVE_IDAT ;
 int PNG_HAVE_IEND ;
 int PNG_HAVE_IHDR ;
 int png_crc_finish (TYPE_1__*,scalar_t__) ;
 int png_debug (int,char*) ;
 int png_error (TYPE_1__*,char*) ;
 int png_warning (TYPE_1__*,char*) ;

void
png_handle_IEND(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   png_debug(1, "in png_handle_IEND\n");

   if (!(png_ptr->mode & PNG_HAVE_IHDR) || !(png_ptr->mode & PNG_HAVE_IDAT))
   {
      png_error(png_ptr, "No image in file");
   }

   png_ptr->mode |= (PNG_AFTER_IDAT | PNG_HAVE_IEND);

   if (length != 0)
   {
      png_warning(png_ptr, "Incorrect IEND chunk length");
   }
   png_crc_finish(png_ptr, length);

   info_ptr =info_ptr;
}
