
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* png_row_infop ;
typedef void** png_bytep ;
struct TYPE_3__ {size_t rowbytes; int channels; int bit_depth; int pixel_depth; scalar_t__ color_type; } ;


 scalar_t__ PNG_COLOR_TYPE_GRAY ;
 scalar_t__ PNG_COLOR_TYPE_GRAY_ALPHA ;
 scalar_t__ PNG_COLOR_TYPE_RGB ;
 scalar_t__ PNG_COLOR_TYPE_RGB_ALPHA ;

void
png_do_strip_channel(png_row_infop row_info, png_bytep row, int at_start)
{
   png_bytep sp = row;
   png_bytep dp = row;
   png_bytep ep = row + row_info->rowbytes;
   if (row_info->channels == 2)
   {
      if (row_info->bit_depth == 8)
      {
         if (at_start != 0)
            ++sp;
         else
         {
            sp += 2; ++dp;
         }


         while (sp < ep)
         {
            *dp++ = *sp; sp += 2;
         }

         row_info->pixel_depth = 8;
      }

      else if (row_info->bit_depth == 16)
      {
         if (at_start != 0)
            sp += 2;
         else
         {
            sp += 4; dp += 2;
         }

         while (sp < ep)
         {
            *dp++ = *sp++; *dp++ = *sp; sp += 3;
         }

         row_info->pixel_depth = 16;
      }

      else
         return;

      row_info->channels = 1;


      if (row_info->color_type == PNG_COLOR_TYPE_GRAY_ALPHA)
         row_info->color_type = PNG_COLOR_TYPE_GRAY;
   }


   else if (row_info->channels == 4)
   {
      if (row_info->bit_depth == 8)
      {
         if (at_start != 0)
            ++sp;
         else
         {
            sp += 4; dp += 3;
         }


         while (sp < ep)
         {
            *dp++ = *sp++; *dp++ = *sp++; *dp++ = *sp; sp += 2;
         }

         row_info->pixel_depth = 24;
      }

      else if (row_info->bit_depth == 16)
      {
         if (at_start != 0)
            sp += 2;
         else
         {
            sp += 8; dp += 6;
         }

         while (sp < ep)
         {

            *dp++ = *sp++; *dp++ = *sp++;
            *dp++ = *sp++; *dp++ = *sp++;
            *dp++ = *sp++; *dp++ = *sp; sp += 3;
         }

         row_info->pixel_depth = 48;
      }

      else
         return;

      row_info->channels = 3;


      if (row_info->color_type == PNG_COLOR_TYPE_RGB_ALPHA)
         row_info->color_type = PNG_COLOR_TYPE_RGB;
   }

   else
      return;


   row_info->rowbytes = (size_t)(dp-row);
}
