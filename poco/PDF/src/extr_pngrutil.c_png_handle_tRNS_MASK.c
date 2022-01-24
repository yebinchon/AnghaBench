#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int png_uint_32 ;
typedef  int png_uint_16 ;
typedef  TYPE_1__* png_structp ;
typedef  int png_size_t ;
typedef  TYPE_2__* png_infop ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_14__ {int gray; int red; int green; int blue; } ;
struct TYPE_13__ {int valid; } ;
struct TYPE_12__ {int bit_depth; int mode; scalar_t__ color_type; int num_trans; TYPE_6__ trans_values; scalar_t__ num_palette; } ;

/* Variables and functions */
 scalar_t__ PNG_COLOR_TYPE_GRAY ; 
 scalar_t__ PNG_COLOR_TYPE_PALETTE ; 
 scalar_t__ PNG_COLOR_TYPE_RGB ; 
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_HAVE_PLTE ; 
 int PNG_INFO_tRNS ; 
 int PNG_MAX_PALETTE_LENGTH ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ *,int,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 

void /* PRIVATE */
FUNC7(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   png_byte readbuf[PNG_MAX_PALETTE_LENGTH];
   int bit_mask;

   FUNC2(1, "in png_handle_tRNS\n");

   /* For non-indexed color, mask off any bits in the tRNS value that
    * exceed the bit depth.  Some creators were writing extra bits there.
    * This is not needed for indexed color. */
   bit_mask = (1 << png_ptr->bit_depth) - 1;

   if (!(png_ptr->mode & PNG_HAVE_IHDR))
      FUNC3(png_ptr, "Missing IHDR before tRNS");
   else if (png_ptr->mode & PNG_HAVE_IDAT)
   {
      FUNC6(png_ptr, "Invalid tRNS after IDAT");
      FUNC0(png_ptr, length);
      return;
   }
   else if (info_ptr != NULL && (info_ptr->valid & PNG_INFO_tRNS))
   {
      FUNC6(png_ptr, "Duplicate tRNS chunk");
      FUNC0(png_ptr, length);
      return;
   }

   if (png_ptr->color_type == PNG_COLOR_TYPE_GRAY)
   {
      png_byte buf[2];

      if (length != 2)
      {
         FUNC6(png_ptr, "Incorrect tRNS chunk length");
         FUNC0(png_ptr, length);
         return;
      }

      FUNC1(png_ptr, buf, 2);
      png_ptr->num_trans = 1;
      png_ptr->trans_values.gray = FUNC4(buf) & bit_mask;
   }
   else if (png_ptr->color_type == PNG_COLOR_TYPE_RGB)
   {
      png_byte buf[6];

      if (length != 6)
      {
         FUNC6(png_ptr, "Incorrect tRNS chunk length");
         FUNC0(png_ptr, length);
         return;
      }
      FUNC1(png_ptr, buf, (png_size_t)length);
      png_ptr->num_trans = 1;
      png_ptr->trans_values.red = FUNC4(buf) & bit_mask;
      png_ptr->trans_values.green = FUNC4(buf + 2) & bit_mask;
      png_ptr->trans_values.blue = FUNC4(buf + 4) & bit_mask;
   }
   else if (png_ptr->color_type == PNG_COLOR_TYPE_PALETTE)
   {
      if (!(png_ptr->mode & PNG_HAVE_PLTE))
      {
         /* Should be an error, but we can cope with it. */
         FUNC6(png_ptr, "Missing PLTE before tRNS");
      }
      if (length > (png_uint_32)png_ptr->num_palette ||
          length > PNG_MAX_PALETTE_LENGTH)
      {
         FUNC6(png_ptr, "Incorrect tRNS chunk length");
         FUNC0(png_ptr, length);
         return;
      }
      if (length == 0)
      {
         FUNC6(png_ptr, "Zero length tRNS chunk");
         FUNC0(png_ptr, length);
         return;
      }
      FUNC1(png_ptr, readbuf, (png_size_t)length);
      png_ptr->num_trans = (png_uint_16)length;
   }
   else
   {
      FUNC6(png_ptr, "tRNS chunk not allowed with alpha channel");
      FUNC0(png_ptr, length);
      return;
   }

   if (FUNC0(png_ptr, 0))
   {
      png_ptr->num_trans = 0;
      return;
   }

   FUNC5(png_ptr, info_ptr, readbuf, png_ptr->num_trans,
      &(png_ptr->trans_values));
}