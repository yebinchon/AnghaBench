
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_1__* png_structp ;
typedef TYPE_2__* png_infop ;
typedef scalar_t__ png_fixed_point ;
typedef int png_byte ;
struct TYPE_12__ {int valid; int gamma; scalar_t__ int_y_blue; scalar_t__ int_x_blue; scalar_t__ int_y_green; scalar_t__ int_x_green; scalar_t__ int_y_red; scalar_t__ int_x_red; scalar_t__ int_y_white; scalar_t__ int_x_white; scalar_t__ int_gamma; } ;
struct TYPE_11__ {int mode; int gamma; scalar_t__ int_gamma; } ;


 int PNG_HAVE_IDAT ;
 int PNG_HAVE_IHDR ;
 int PNG_HAVE_PLTE ;
 int PNG_INFO_cHRM ;
 int PNG_INFO_gAMA ;
 int PNG_INFO_sRGB ;
 scalar_t__ PNG_OUT_OF_RANGE (scalar_t__,int,int) ;
 int PNG_sRGB_INTENT_LAST ;
 int fprintf (int ,char*,int) ;
 scalar_t__ png_crc_finish (TYPE_1__*,int) ;
 int png_crc_read (TYPE_1__*,int*,int) ;
 int png_debug (int,char*) ;
 int png_error (TYPE_1__*,char*) ;
 int png_set_sRGB_gAMA_and_cHRM (TYPE_1__*,TYPE_2__*,int) ;
 int png_warning (TYPE_1__*,char*) ;
 int stderr ;

void
png_handle_sRGB(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   int intent;
   png_byte buf[1];

   png_debug(1, "in png_handle_sRGB\n");

   if (!(png_ptr->mode & PNG_HAVE_IHDR))
      png_error(png_ptr, "Missing IHDR before sRGB");
   else if (png_ptr->mode & PNG_HAVE_IDAT)
   {
      png_warning(png_ptr, "Invalid sRGB after IDAT");
      png_crc_finish(png_ptr, length);
      return;
   }
   else if (png_ptr->mode & PNG_HAVE_PLTE)

      png_warning(png_ptr, "Out of place sRGB chunk");

   if (info_ptr != ((void*)0) && (info_ptr->valid & PNG_INFO_sRGB))
   {
      png_warning(png_ptr, "Duplicate sRGB chunk");
      png_crc_finish(png_ptr, length);
      return;
   }

   if (length != 1)
   {
      png_warning(png_ptr, "Incorrect sRGB chunk length");
      png_crc_finish(png_ptr, length);
      return;
   }

   png_crc_read(png_ptr, buf, 1);
   if (png_crc_finish(png_ptr, 0))
      return;

   intent = buf[0];

   if (intent >= PNG_sRGB_INTENT_LAST)
   {
      png_warning(png_ptr, "Unknown sRGB intent");
      return;
   }
   png_set_sRGB_gAMA_and_cHRM(png_ptr, info_ptr, intent);
}
