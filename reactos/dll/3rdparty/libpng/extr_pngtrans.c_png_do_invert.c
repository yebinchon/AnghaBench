
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* png_row_infop ;
typedef scalar_t__* png_bytep ;
typedef scalar_t__ png_byte ;
struct TYPE_3__ {scalar_t__ color_type; size_t rowbytes; int bit_depth; } ;


 scalar_t__ PNG_COLOR_TYPE_GRAY ;
 scalar_t__ PNG_COLOR_TYPE_GRAY_ALPHA ;
 int png_debug (int,char*) ;

void
png_do_invert(png_row_infop row_info, png_bytep row)
{
   png_debug(1, "in png_do_invert");




   if (row_info->color_type == PNG_COLOR_TYPE_GRAY)
   {
      png_bytep rp = row;
      size_t i;
      size_t istop = row_info->rowbytes;

      for (i = 0; i < istop; i++)
      {
         *rp = (png_byte)(~(*rp));
         rp++;
      }
   }

   else if (row_info->color_type == PNG_COLOR_TYPE_GRAY_ALPHA &&
      row_info->bit_depth == 8)
   {
      png_bytep rp = row;
      size_t i;
      size_t istop = row_info->rowbytes;

      for (i = 0; i < istop; i += 2)
      {
         *rp = (png_byte)(~(*rp));
         rp += 2;
      }
   }
}
