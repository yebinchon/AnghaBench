#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int png_uint_32 ;
typedef  TYPE_1__* png_row_infop ;
typedef  int /*<<< orphan*/ * png_bytep ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_3__ {int width; scalar_t__ color_type; int bit_depth; int channels; int pixel_depth; int rowbytes; } ;

/* Variables and functions */
 scalar_t__ PNG_COLOR_TYPE_GRAY ; 
 scalar_t__ PNG_COLOR_TYPE_RGB ; 
 int PNG_FLAG_FILLER_AFTER ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

__attribute__((used)) static void
FUNC1(png_row_infop row_info, png_bytep row,
    png_uint_32 filler, png_uint_32 flags)
{
   png_uint_32 i;
   png_uint_32 row_width = row_info->width;

#ifdef PNG_READ_16BIT_SUPPORTED
   png_byte hi_filler = (png_byte)(filler>>8);
#endif
   png_byte lo_filler = (png_byte)filler;

   FUNC0(1, "in png_do_read_filler");

   if (
       row_info->color_type == PNG_COLOR_TYPE_GRAY)
   {
      if (row_info->bit_depth == 8)
      {
         if ((flags & PNG_FLAG_FILLER_AFTER) != 0)
         {
            /* This changes the data from G to GX */
            png_bytep sp = row + (size_t)row_width;
            png_bytep dp =  sp + (size_t)row_width;
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
            /* This changes the data from G to XG */
            png_bytep sp = row + (size_t)row_width;
            png_bytep dp = sp  + (size_t)row_width;
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

#ifdef PNG_READ_16BIT_SUPPORTED
      else if (row_info->bit_depth == 16)
      {
         if ((flags & PNG_FLAG_FILLER_AFTER) != 0)
         {
            /* This changes the data from GG to GGXX */
            png_bytep sp = row + (size_t)row_width * 2;
            png_bytep dp = sp  + (size_t)row_width * 2;
            for (i = 1; i < row_width; i++)
            {
               *(--dp) = lo_filler;
               *(--dp) = hi_filler;
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
            }
            *(--dp) = lo_filler;
            *(--dp) = hi_filler;
            row_info->channels = 2;
            row_info->pixel_depth = 32;
            row_info->rowbytes = row_width * 4;
         }

         else
         {
            /* This changes the data from GG to XXGG */
            png_bytep sp = row + (size_t)row_width * 2;
            png_bytep dp = sp  + (size_t)row_width * 2;
            for (i = 0; i < row_width; i++)
            {
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
               *(--dp) = lo_filler;
               *(--dp) = hi_filler;
            }
            row_info->channels = 2;
            row_info->pixel_depth = 32;
            row_info->rowbytes = row_width * 4;
         }
      }
#endif
   } /* COLOR_TYPE == GRAY */
   else if (row_info->color_type == PNG_COLOR_TYPE_RGB)
   {
      if (row_info->bit_depth == 8)
      {
         if ((flags & PNG_FLAG_FILLER_AFTER) != 0)
         {
            /* This changes the data from RGB to RGBX */
            png_bytep sp = row + (size_t)row_width * 3;
            png_bytep dp = sp  + (size_t)row_width;
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
            /* This changes the data from RGB to XRGB */
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

#ifdef PNG_READ_16BIT_SUPPORTED
      else if (row_info->bit_depth == 16)
      {
         if ((flags & PNG_FLAG_FILLER_AFTER) != 0)
         {
            /* This changes the data from RRGGBB to RRGGBBXX */
            png_bytep sp = row + (size_t)row_width * 6;
            png_bytep dp = sp  + (size_t)row_width * 2;
            for (i = 1; i < row_width; i++)
            {
               *(--dp) = lo_filler;
               *(--dp) = hi_filler;
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
            }
            *(--dp) = lo_filler;
            *(--dp) = hi_filler;
            row_info->channels = 4;
            row_info->pixel_depth = 64;
            row_info->rowbytes = row_width * 8;
         }

         else
         {
            /* This changes the data from RRGGBB to XXRRGGBB */
            png_bytep sp = row + (size_t)row_width * 6;
            png_bytep dp = sp  + (size_t)row_width * 2;
            for (i = 0; i < row_width; i++)
            {
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
               *(--dp) = *(--sp);
               *(--dp) = lo_filler;
               *(--dp) = hi_filler;
            }

            row_info->channels = 4;
            row_info->pixel_depth = 64;
            row_info->rowbytes = row_width * 8;
         }
      }
#endif
   } /* COLOR_TYPE == RGB */
}