#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int png_uint_32 ;
typedef  TYPE_1__* png_structrp ;
typedef  TYPE_2__* png_inforp ;
typedef  void* png_byte ;
struct TYPE_14__ {void* alpha; void* blue; void* green; void* red; void* gray; } ;
struct TYPE_13__ {int valid; } ;
struct TYPE_12__ {int mode; int color_type; unsigned int channels; TYPE_5__ sig_bit; void* bit_depth; } ;

/* Variables and functions */
 int PNG_COLOR_MASK_COLOR ; 
 int PNG_COLOR_TYPE_PALETTE ; 
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_HAVE_PLTE ; 
 int PNG_INFO_sBIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void**,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,TYPE_5__*) ; 

void /* PRIVATE */
FUNC6(png_structrp png_ptr, png_inforp info_ptr, png_uint_32 length)
{
   unsigned int truelen, i;
   png_byte sample_depth;
   png_byte buf[4];

   FUNC4(1, "in png_handle_sBIT");

   if ((png_ptr->mode & PNG_HAVE_IHDR) == 0)
      FUNC1(png_ptr, "missing IHDR");

   else if ((png_ptr->mode & (PNG_HAVE_IDAT|PNG_HAVE_PLTE)) != 0)
   {
      FUNC2(png_ptr, length);
      FUNC0(png_ptr, "out of place");
      return;
   }

   if (info_ptr != NULL && (info_ptr->valid & PNG_INFO_sBIT) != 0)
   {
      FUNC2(png_ptr, length);
      FUNC0(png_ptr, "duplicate");
      return;
   }

   if (png_ptr->color_type == PNG_COLOR_TYPE_PALETTE)
   {
      truelen = 3;
      sample_depth = 8;
   }

   else
   {
      truelen = png_ptr->channels;
      sample_depth = png_ptr->bit_depth;
   }

   if (length != truelen || length > 4)
   {
      FUNC0(png_ptr, "invalid");
      FUNC2(png_ptr, length);
      return;
   }

   buf[0] = buf[1] = buf[2] = buf[3] = sample_depth;
   FUNC3(png_ptr, buf, truelen);

   if (FUNC2(png_ptr, 0) != 0)
      return;

   for (i=0; i<truelen; ++i)
   {
      if (buf[i] == 0 || buf[i] > sample_depth)
      {
         FUNC0(png_ptr, "invalid");
         return;
      }
   }

   if ((png_ptr->color_type & PNG_COLOR_MASK_COLOR) != 0)
   {
      png_ptr->sig_bit.red = buf[0];
      png_ptr->sig_bit.green = buf[1];
      png_ptr->sig_bit.blue = buf[2];
      png_ptr->sig_bit.alpha = buf[3];
   }

   else
   {
      png_ptr->sig_bit.gray = buf[0];
      png_ptr->sig_bit.red = buf[0];
      png_ptr->sig_bit.green = buf[0];
      png_ptr->sig_bit.blue = buf[0];
      png_ptr->sig_bit.alpha = buf[1];
   }

   FUNC5(png_ptr, info_ptr, &(png_ptr->sig_bit));
}