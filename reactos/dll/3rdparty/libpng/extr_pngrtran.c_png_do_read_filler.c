
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_1__* png_row_infop ;
typedef int * png_bytep ;
typedef int png_byte ;
struct TYPE_3__ {int width; scalar_t__ color_type; int bit_depth; int channels; int pixel_depth; int rowbytes; } ;


 scalar_t__ PNG_COLOR_TYPE_GRAY ;
 scalar_t__ PNG_COLOR_TYPE_RGB ;
 int PNG_FLAG_FILLER_AFTER ;
 int png_debug (int,char*) ;

__attribute__((used)) static void
png_do_read_filler(png_row_infop row_info, png_bytep row,
    png_uint_32 filler, png_uint_32 flags)
{
   png_uint_32 i;
   png_uint_32 row_width = row_info->width;




   png_byte lo_filler = (png_byte)filler;

   png_debug(1, "in png_do_read_filler");

   if (
       row_info->color_type == PNG_COLOR_TYPE_GRAY)
   {
      if (row_info->bit_depth == 8)
      {
         if ((flags & PNG_FLAG_FILLER_AFTER) != 0)
         {

            png_bytep sp = row + (size_t)row_width;
            png_bytep dp = sp + (size_t)row_width;
            for (i = 1; i < row_width; i++)
            {
               *(--dp) = lo_filler;
               *(--dp) = *(--sp);
            }
            *(--dp) = lo_filler;
            row_info->channels = 2;
            row_info->pixel_depth = 16;
            row_info->rowbytes = row_width * 2;
         }

         else
         {

            png_bytep sp = row + (size_t)row_width;
            png_bytep dp = sp + (size_t)row_width;
            for (i = 0; i < row_width; i++)
            {
               *(--dp) = *(--sp);
               *(--dp) = lo_filler;
            }
            row_info->channels = 2;
            row_info->pixel_depth = 16;
            row_info->rowbytes = row_width * 2;
         }
      }
   }
   else if (row_info->color_type == PNG_COLOR_TYPE_RGB)
   {
      if (row_info->bit_depth == 8)
      {
         if ((flags & PNG_FLAG_FILLER_AFTER) != 0)
         {

            png_bytep sp = row + (size_t)row_width * 3;
            png_bytep dp = sp + (size_t)row_width;
            for (i = 1; i < row_width; i++)
            {
               *(--dp) = lo_filler;
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
            }
            *(--dp) = lo_filler;
            row_info->channels = 4;
            row_info->pixel_depth = 32;
            row_info->rowbytes = row_width * 4;
         }

         else
         {

            png_bytep sp = row + (size_t)row_width * 3;
            png_bytep dp = sp + (size_t)row_width;
            for (i = 0; i < row_width; i++)
            {
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
               *(--dp) = lo_filler;
            }
            row_info->channels = 4;
            row_info->pixel_depth = 32;
            row_info->rowbytes = row_width * 4;
         }
      }
   }
}
