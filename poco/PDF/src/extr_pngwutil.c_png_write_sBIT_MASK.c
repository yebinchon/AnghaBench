#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* png_structp ;
typedef  int png_size_t ;
typedef  TYPE_2__* png_color_8p ;
typedef  scalar_t__ png_byte ;
struct TYPE_8__ {scalar_t__ red; scalar_t__ green; scalar_t__ blue; int gray; int alpha; } ;
struct TYPE_7__ {int usr_bit_depth; } ;

/* Variables and functions */
 int PNG_COLOR_MASK_ALPHA ; 
 int PNG_COLOR_MASK_COLOR ; 
 int PNG_COLOR_TYPE_PALETTE ; 
 int /*<<< orphan*/  PNG_sBIT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  png_sBIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,int) ; 

void /* PRIVATE */
FUNC3(png_structp png_ptr, png_color_8p sbit, int color_type)
{
#ifdef PNG_USE_LOCAL_ARRAYS
   PNG_sBIT;
#endif
   png_byte buf[4];
   png_size_t size;

   FUNC0(1, "in png_write_sBIT\n");
   /* make sure we don't depend upon the order of PNG_COLOR_8 */
   if (color_type & PNG_COLOR_MASK_COLOR)
   {
      png_byte maxbits;

      maxbits = (png_byte)(color_type==PNG_COLOR_TYPE_PALETTE ? 8 :
                png_ptr->usr_bit_depth);
      if (sbit->red == 0 || sbit->red > maxbits ||
          sbit->green == 0 || sbit->green > maxbits ||
          sbit->blue == 0 || sbit->blue > maxbits)
      {
         FUNC1(png_ptr, "Invalid sBIT depth specified");
         return;
      }
      buf[0] = sbit->red;
      buf[1] = sbit->green;
      buf[2] = sbit->blue;
      size = 3;
   }
   else
   {
      if (sbit->gray == 0 || sbit->gray > png_ptr->usr_bit_depth)
      {
         FUNC1(png_ptr, "Invalid sBIT depth specified");
         return;
      }
      buf[0] = sbit->gray;
      size = 1;
   }

   if (color_type & PNG_COLOR_MASK_ALPHA)
   {
      if (sbit->alpha == 0 || sbit->alpha > png_ptr->usr_bit_depth)
      {
         FUNC1(png_ptr, "Invalid sBIT depth specified");
         return;
      }
      buf[size++] = sbit->alpha;
   }

   FUNC2(png_ptr, png_sBIT, buf, size);
}