
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_1__* png_structp ;
typedef TYPE_2__* png_infop ;
typedef float png_fixed_point ;
typedef int png_byte ;
struct TYPE_14__ {int valid; } ;
struct TYPE_13__ {int mode; } ;


 int PNG_HAVE_IDAT ;
 int PNG_HAVE_IHDR ;
 int PNG_HAVE_PLTE ;
 int PNG_INFO_cHRM ;
 int PNG_INFO_sRGB ;
 scalar_t__ PNG_OUT_OF_RANGE (float,int,int) ;
 int fprintf (int ,char*,float,float,float,float) ;
 scalar_t__ png_crc_finish (TYPE_1__*,int) ;
 int png_crc_read (TYPE_1__*,int *,int) ;
 int png_debug (int,char*) ;
 int png_error (TYPE_1__*,char*) ;
 int png_get_uint_32 (int *) ;
 int png_set_cHRM (TYPE_1__*,TYPE_2__*,float,float,float,float,float,float,float,float) ;
 int png_set_cHRM_fixed (TYPE_1__*,TYPE_2__*,float,float,float,float,float,float,float,float) ;
 int png_warning (TYPE_1__*,char*) ;
 int stderr ;

void
png_handle_cHRM(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   png_byte buf[4];



   png_fixed_point int_x_white, int_y_white, int_x_red, int_y_red, int_x_green,
      int_y_green, int_x_blue, int_y_blue;

   png_uint_32 uint_x, uint_y;

   png_debug(1, "in png_handle_cHRM\n");

   if (!(png_ptr->mode & PNG_HAVE_IHDR))
      png_error(png_ptr, "Missing IHDR before cHRM");
   else if (png_ptr->mode & PNG_HAVE_IDAT)
   {
      png_warning(png_ptr, "Invalid cHRM after IDAT");
      png_crc_finish(png_ptr, length);
      return;
   }
   else if (png_ptr->mode & PNG_HAVE_PLTE)

      png_warning(png_ptr, "Missing PLTE before cHRM");

   if (info_ptr != ((void*)0) && (info_ptr->valid & PNG_INFO_cHRM)



      )
   {
      png_warning(png_ptr, "Duplicate cHRM chunk");
      png_crc_finish(png_ptr, length);
      return;
   }

   if (length != 32)
   {
      png_warning(png_ptr, "Incorrect cHRM chunk length");
      png_crc_finish(png_ptr, length);
      return;
   }

   png_crc_read(png_ptr, buf, 4);
   uint_x = png_get_uint_32(buf);

   png_crc_read(png_ptr, buf, 4);
   uint_y = png_get_uint_32(buf);

   if (uint_x > 80000L || uint_y > 80000L ||
      uint_x + uint_y > 100000L)
   {
      png_warning(png_ptr, "Invalid cHRM white point");
      png_crc_finish(png_ptr, 24);
      return;
   }
   int_x_white = (png_fixed_point)uint_x;
   int_y_white = (png_fixed_point)uint_y;

   png_crc_read(png_ptr, buf, 4);
   uint_x = png_get_uint_32(buf);

   png_crc_read(png_ptr, buf, 4);
   uint_y = png_get_uint_32(buf);

   if (uint_x + uint_y > 100000L)
   {
      png_warning(png_ptr, "Invalid cHRM red point");
      png_crc_finish(png_ptr, 16);
      return;
   }
   int_x_red = (png_fixed_point)uint_x;
   int_y_red = (png_fixed_point)uint_y;

   png_crc_read(png_ptr, buf, 4);
   uint_x = png_get_uint_32(buf);

   png_crc_read(png_ptr, buf, 4);
   uint_y = png_get_uint_32(buf);

   if (uint_x + uint_y > 100000L)
   {
      png_warning(png_ptr, "Invalid cHRM green point");
      png_crc_finish(png_ptr, 8);
      return;
   }
   int_x_green = (png_fixed_point)uint_x;
   int_y_green = (png_fixed_point)uint_y;

   png_crc_read(png_ptr, buf, 4);
   uint_x = png_get_uint_32(buf);

   png_crc_read(png_ptr, buf, 4);
   uint_y = png_get_uint_32(buf);

   if (uint_x + uint_y > 100000L)
   {
      png_warning(png_ptr, "Invalid cHRM blue point");
      png_crc_finish(png_ptr, 0);
      return;
   }
   int_x_blue = (png_fixed_point)uint_x;
   int_y_blue = (png_fixed_point)uint_y;
   if (png_crc_finish(png_ptr, 0))
      return;
}
