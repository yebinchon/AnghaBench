
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef int png_uint_16 ;
typedef TYPE_1__* png_structp ;
typedef TYPE_2__* png_row_infop ;
typedef int* png_bytep ;
typedef scalar_t__ png_byte ;
struct TYPE_6__ {scalar_t__ width; int color_type; int bit_depth; int channels; scalar_t__ pixel_depth; int rowbytes; } ;
struct TYPE_5__ {scalar_t__ rgb_to_gray_red_coeff; scalar_t__ rgb_to_gray_green_coeff; scalar_t__ rgb_to_gray_blue_coeff; scalar_t__* gamma_to_1; int** gamma_16_to_1; int** gamma_16_from_1; int gamma_shift; int * gamma_from_1; } ;


 int PNG_COLOR_MASK_COLOR ;
 int PNG_COLOR_TYPE_RGB ;
 int PNG_COLOR_TYPE_RGB_ALPHA ;
 int PNG_ROWBYTES (scalar_t__,scalar_t__) ;
 int png_debug (int,char*) ;

int
png_do_rgb_to_gray(png_structp png_ptr, png_row_infop row_info, png_bytep row)

{
   png_uint_32 i;

   png_uint_32 row_width = row_info->width;
   int rgb_error = 0;

   png_debug(1, "in png_do_rgb_to_gray\n");
   if (



      (row_info->color_type & PNG_COLOR_MASK_COLOR))
   {
      png_uint_32 rc = png_ptr->rgb_to_gray_red_coeff;
      png_uint_32 gc = png_ptr->rgb_to_gray_green_coeff;
      png_uint_32 bc = png_ptr->rgb_to_gray_blue_coeff;

      if (row_info->color_type == PNG_COLOR_TYPE_RGB)
      {
         if (row_info->bit_depth == 8)
         {
            {
               png_bytep sp = row;
               png_bytep dp = row;
               for (i = 0; i < row_width; i++)
               {
                  png_byte red = *(sp++);
                  png_byte green = *(sp++);
                  png_byte blue = *(sp++);
                  if(red != green || red != blue)
                  {
                     rgb_error |= 1;
                     *(dp++) = (png_byte)((rc*red+gc*green+bc*blue)>>15);
                  }
                  else
                     *(dp++) = *(sp-1);
               }
            }
         }

         else
         {
            {
               png_bytep sp = row;
               png_bytep dp = row;
               for (i = 0; i < row_width; i++)
               {
                  png_uint_16 red, green, blue, gray16;

                  red = (png_uint_16)(((*(sp))<<8) | *(sp+1)); sp+=2;
                  green = (png_uint_16)(((*(sp))<<8) | *(sp+1)); sp+=2;
                  blue = (png_uint_16)(((*(sp))<<8) | *(sp+1)); sp+=2;

                  if(red != green || red != blue)
                     rgb_error |= 1;
                  gray16 = (png_uint_16)((rc*red + gc*green + bc*blue)>>15);
                  *(dp++) = (png_byte)((gray16>>8) & 0xff);
                  *(dp++) = (png_byte)(gray16 & 0xff);
               }
            }
         }
      }
      if (row_info->color_type == PNG_COLOR_TYPE_RGB_ALPHA)
      {
         if (row_info->bit_depth == 8)
         {
            {
               png_bytep sp = row;
               png_bytep dp = row;
               for (i = 0; i < row_width; i++)
               {
                  png_byte red = *(sp++);
                  png_byte green = *(sp++);
                  png_byte blue = *(sp++);
                  if(red != green || red != blue)
                     rgb_error |= 1;
                  *(dp++) = (png_byte)((rc*red + gc*green + bc*blue)>>15);
                  *(dp++) = *(sp++);
               }
            }
         }
         else
         {
            {
               png_bytep sp = row;
               png_bytep dp = row;
               for (i = 0; i < row_width; i++)
               {
                  png_uint_16 red, green, blue, gray16;
                  red = (png_uint_16)((*(sp)<<8) | *(sp+1)); sp+=2;
                  green = (png_uint_16)((*(sp)<<8) | *(sp+1)); sp+=2;
                  blue = (png_uint_16)((*(sp)<<8) | *(sp+1)); sp+=2;
                  if(red != green || red != blue)
                     rgb_error |= 1;
                  gray16 = (png_uint_16)((rc*red + gc*green + bc*blue)>>15);
                  *(dp++) = (png_byte)((gray16>>8) & 0xff);
                  *(dp++) = (png_byte)(gray16 & 0xff);
                  *(dp++) = *(sp++);
                  *(dp++) = *(sp++);
               }
            }
         }
      }
   row_info->channels -= (png_byte)2;
      row_info->color_type &= ~PNG_COLOR_MASK_COLOR;
      row_info->pixel_depth = (png_byte)(row_info->channels *
         row_info->bit_depth);
      row_info->rowbytes = PNG_ROWBYTES(row_info->pixel_depth,row_width);
   }
   return rgb_error;
}
