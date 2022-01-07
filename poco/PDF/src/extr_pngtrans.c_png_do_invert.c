
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_row_infop ;
typedef scalar_t__* png_bytep ;
typedef scalar_t__ png_byte ;
struct TYPE_3__ {scalar_t__ color_type; scalar_t__ rowbytes; int bit_depth; } ;


 scalar_t__ PNG_COLOR_TYPE_GRAY ;
 scalar_t__ PNG_COLOR_TYPE_GRAY_ALPHA ;
 int png_debug (int,char*) ;

void
png_do_invert(png_row_infop row_info, png_bytep row)
{
   png_debug(1, "in png_do_invert\n");







   if (row_info->color_type == PNG_COLOR_TYPE_GRAY)
   {
      png_bytep rp = row;
      png_uint_32 i;
      png_uint_32 istop = row_info->rowbytes;

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
      png_uint_32 i;
      png_uint_32 istop = row_info->rowbytes;

      for (i = 0; i < istop; i+=2)
      {
         *rp = (png_byte)(~(*rp));
         rp+=2;
      }
   }
   else if (row_info->color_type == PNG_COLOR_TYPE_GRAY_ALPHA &&
      row_info->bit_depth == 16)
   {
      png_bytep rp = row;
      png_uint_32 i;
      png_uint_32 istop = row_info->rowbytes;

      for (i = 0; i < istop; i+=4)
      {
         *rp = (png_byte)(~(*rp));
         *(rp+1) = (png_byte)(~(*(rp+1)));
         rp+=4;
      }
   }
}
