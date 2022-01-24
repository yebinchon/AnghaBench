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
typedef  int* png_bytep ;
typedef  unsigned int png_byte ;
struct TYPE_3__ {int bit_depth; int channels; int width; unsigned int pixel_depth; int /*<<< orphan*/  rowbytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

__attribute__((used)) static void
FUNC2(png_row_infop row_info, png_bytep row, png_uint_32 bit_depth)
{
   FUNC1(1, "in png_do_pack");

   if (row_info->bit_depth == 8 &&
      row_info->channels == 1)
   {
      switch ((int)bit_depth)
      {
         case 1:
         {
            png_bytep sp, dp;
            int mask, v;
            png_uint_32 i;
            png_uint_32 row_width = row_info->width;

            sp = row;
            dp = row;
            mask = 0x80;
            v = 0;

            for (i = 0; i < row_width; i++)
            {
               if (*sp != 0)
                  v |= mask;

               sp++;

               if (mask > 1)
                  mask >>= 1;

               else
               {
                  mask = 0x80;
                  *dp = (png_byte)v;
                  dp++;
                  v = 0;
               }
            }

            if (mask != 0x80)
               *dp = (png_byte)v;

            break;
         }

         case 2:
         {
            png_bytep sp, dp;
            unsigned int shift;
            int v;
            png_uint_32 i;
            png_uint_32 row_width = row_info->width;

            sp = row;
            dp = row;
            shift = 6;
            v = 0;

            for (i = 0; i < row_width; i++)
            {
               png_byte value;

               value = (png_byte)(*sp & 0x03);
               v |= (value << shift);

               if (shift == 0)
               {
                  shift = 6;
                  *dp = (png_byte)v;
                  dp++;
                  v = 0;
               }

               else
                  shift -= 2;

               sp++;
            }

            if (shift != 6)
               *dp = (png_byte)v;

            break;
         }

         case 4:
         {
            png_bytep sp, dp;
            unsigned int shift;
            int v;
            png_uint_32 i;
            png_uint_32 row_width = row_info->width;

            sp = row;
            dp = row;
            shift = 4;
            v = 0;

            for (i = 0; i < row_width; i++)
            {
               png_byte value;

               value = (png_byte)(*sp & 0x0f);
               v |= (value << shift);

               if (shift == 0)
               {
                  shift = 4;
                  *dp = (png_byte)v;
                  dp++;
                  v = 0;
               }

               else
                  shift -= 4;

               sp++;
            }

            if (shift != 4)
               *dp = (png_byte)v;

            break;
         }

         default:
            break;
      }

      row_info->bit_depth = (png_byte)bit_depth;
      row_info->pixel_depth = (png_byte)(bit_depth * row_info->channels);
      row_info->rowbytes = FUNC0(row_info->pixel_depth,
          row_info->width);
   }
}