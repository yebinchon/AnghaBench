
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_row_infop ;
typedef int* png_bytep ;
typedef scalar_t__ png_byte ;
struct TYPE_3__ {int bit_depth; scalar_t__ width; scalar_t__ channels; int rowbytes; scalar_t__ pixel_depth; } ;


 int png_debug (int,char*) ;

void
png_do_chop(png_row_infop row_info, png_bytep row)
{
   png_debug(1, "in png_do_chop\n");



   if (row_info->bit_depth == 16)

   {
      png_bytep sp = row;
      png_bytep dp = row;
      png_uint_32 i;
      png_uint_32 istop = row_info->width * row_info->channels;

      for (i = 0; i<istop; i++, sp += 2, dp++)
      {
         *dp = *sp;

      }
      row_info->bit_depth = 8;
      row_info->pixel_depth = (png_byte)(8 * row_info->channels);
      row_info->rowbytes = row_info->width * row_info->channels;
   }
}
