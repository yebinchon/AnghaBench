
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_structp ;
typedef int png_size_t ;
typedef long png_fixed_point ;
typedef int png_byte ;


 int PNG_cHRM ;
 int fprintf (int ,char*,long,long) ;
 int png_cHRM ;
 int png_debug (int,char*) ;
 int png_save_uint_32 (int *,int ) ;
 int png_warning (int ,char*) ;
 int png_write_chunk (int ,int ,int *,int ) ;
 int stderr ;

void
png_write_cHRM_fixed(png_structp png_ptr, png_fixed_point white_x,
   png_fixed_point white_y, png_fixed_point red_x, png_fixed_point red_y,
   png_fixed_point green_x, png_fixed_point green_y, png_fixed_point blue_x,
   png_fixed_point blue_y)
{



   png_byte buf[32];

   png_debug(1, "in png_write_cHRM\n");

   if (white_x > 80000L || white_y > 80000L || white_x + white_y > 100000L)
   {
      png_warning(png_ptr, "Invalid fixed cHRM white point specified");

      fprintf(stderr,"white_x=%ld, white_y=%ld\n",white_x, white_y);

      return;
   }
   png_save_uint_32(buf, (png_uint_32)white_x);
   png_save_uint_32(buf + 4, (png_uint_32)white_y);

   if (red_x + red_y > 100000L)
   {
      png_warning(png_ptr, "Invalid cHRM fixed red point specified");
      return;
   }
   png_save_uint_32(buf + 8, (png_uint_32)red_x);
   png_save_uint_32(buf + 12, (png_uint_32)red_y);

   if (green_x + green_y > 100000L)
   {
      png_warning(png_ptr, "Invalid fixed cHRM green point specified");
      return;
   }
   png_save_uint_32(buf + 16, (png_uint_32)green_x);
   png_save_uint_32(buf + 20, (png_uint_32)green_y);

   if (blue_x + blue_y > 100000L)
   {
      png_warning(png_ptr, "Invalid fixed cHRM blue point specified");
      return;
   }
   png_save_uint_32(buf + 24, (png_uint_32)blue_x);
   png_save_uint_32(buf + 28, (png_uint_32)blue_y);

   png_write_chunk(png_ptr, png_cHRM, buf, (png_size_t)32);
}
