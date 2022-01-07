
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_1__* png_row_infop ;
typedef int * png_bytep ;
struct TYPE_3__ {int width; int channels; int bit_depth; int pixel_depth; int rowbytes; int color_type; } ;


 int PNG_COLOR_MASK_ALPHA ;
 int PNG_COLOR_TYPE_GRAY ;
 int PNG_COLOR_TYPE_GRAY_ALPHA ;
 int PNG_COLOR_TYPE_RGB ;
 int PNG_COLOR_TYPE_RGB_ALPHA ;
 int PNG_FLAG_FILLER_AFTER ;
 int PNG_FLAG_STRIP_ALPHA ;
 int png_debug (int,char*) ;

void
png_do_strip_filler(png_row_infop row_info, png_bytep row, png_uint_32 flags)
{
   png_debug(1, "in png_do_strip_filler\n");



   {
      png_bytep sp=row;
      png_bytep dp=row;
      png_uint_32 row_width=row_info->width;
      png_uint_32 i;

      if ((row_info->color_type == PNG_COLOR_TYPE_RGB ||
         (row_info->color_type == PNG_COLOR_TYPE_RGB_ALPHA &&
         (flags & PNG_FLAG_STRIP_ALPHA))) &&
         row_info->channels == 4)
      {
         if (row_info->bit_depth == 8)
         {

            if (flags & PNG_FLAG_FILLER_AFTER)
            {
               dp+=3; sp+=4;
               for (i = 1; i < row_width; i++)
               {
                  *dp++ = *sp++;
                  *dp++ = *sp++;
                  *dp++ = *sp++;
                  sp++;
               }
            }

            else
            {
               for (i = 0; i < row_width; i++)
               {
                  sp++;
                  *dp++ = *sp++;
                  *dp++ = *sp++;
                  *dp++ = *sp++;
               }
            }
            row_info->pixel_depth = 24;
            row_info->rowbytes = row_width * 3;
         }
         else
         {
            if (flags & PNG_FLAG_FILLER_AFTER)
            {

               sp += 8; dp += 6;
               for (i = 1; i < row_width; i++)
               {






                  *dp++ = *sp++;
                  *dp++ = *sp++;
                  *dp++ = *sp++;
                  *dp++ = *sp++;
                  *dp++ = *sp++;
                  *dp++ = *sp++;
                  sp += 2;
               }
            }
            else
            {

               for (i = 0; i < row_width; i++)
               {






                  sp+=2;
                  *dp++ = *sp++;
                  *dp++ = *sp++;
                  *dp++ = *sp++;
                  *dp++ = *sp++;
                  *dp++ = *sp++;
                  *dp++ = *sp++;
               }
            }
            row_info->pixel_depth = 48;
            row_info->rowbytes = row_width * 6;
         }
         row_info->channels = 3;
      }
      else if ((row_info->color_type == PNG_COLOR_TYPE_GRAY ||
         (row_info->color_type == PNG_COLOR_TYPE_GRAY_ALPHA &&
         (flags & PNG_FLAG_STRIP_ALPHA))) &&
          row_info->channels == 2)
      {
         if (row_info->bit_depth == 8)
         {

            if (flags & PNG_FLAG_FILLER_AFTER)
            {
               for (i = 0; i < row_width; i++)
               {
                  *dp++ = *sp++;
                  sp++;
               }
            }

            else
            {
               for (i = 0; i < row_width; i++)
               {
                  sp++;
                  *dp++ = *sp++;
               }
            }
            row_info->pixel_depth = 8;
            row_info->rowbytes = row_width;
         }
         else
         {
            if (flags & PNG_FLAG_FILLER_AFTER)
            {

               sp += 4; dp += 2;
               for (i = 1; i < row_width; i++)
               {
                  *dp++ = *sp++;
                  *dp++ = *sp++;
                  sp += 2;
               }
            }
            else
            {

               for (i = 0; i < row_width; i++)
               {
                  sp += 2;
                  *dp++ = *sp++;
                  *dp++ = *sp++;
               }
            }
            row_info->pixel_depth = 16;
            row_info->rowbytes = row_width * 2;
         }
         row_info->channels = 1;
      }
      if (flags & PNG_FLAG_STRIP_ALPHA)
        row_info->color_type &= ~PNG_COLOR_MASK_ALPHA;
   }
}
