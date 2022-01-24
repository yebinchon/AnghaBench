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
typedef  TYPE_1__* png_structp ;
typedef  int png_size_t ;
typedef  TYPE_2__* png_infop ;
typedef  void* png_byte ;
struct TYPE_14__ {void* alpha; void* blue; void* green; void* red; void* gray; } ;
struct TYPE_13__ {int valid; } ;
struct TYPE_12__ {int mode; int color_type; TYPE_6__ sig_bit; scalar_t__ channels; } ;

/* Variables and functions */
 int PNG_COLOR_MASK_COLOR ; 
 int PNG_COLOR_TYPE_PALETTE ; 
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_HAVE_PLTE ; 
 int PNG_INFO_sBIT ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void**,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

void /* PRIVATE */
FUNC6(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   png_size_t truelen;
   png_byte buf[4];

   FUNC2(1, "in png_handle_sBIT\n");

   buf[0] = buf[1] = buf[2] = buf[3] = 0;

   if (!(png_ptr->mode & PNG_HAVE_IHDR))
      FUNC3(png_ptr, "Missing IHDR before sBIT");
   else if (png_ptr->mode & PNG_HAVE_IDAT)
   {
      FUNC5(png_ptr, "Invalid sBIT after IDAT");
      FUNC0(png_ptr, length);
      return;
   }
   else if (png_ptr->mode & PNG_HAVE_PLTE)
   {
      /* Should be an error, but we can cope with it */
      FUNC5(png_ptr, "Out of place sBIT chunk");
   }
   if (info_ptr != NULL && (info_ptr->valid & PNG_INFO_sBIT))
   {
      FUNC5(png_ptr, "Duplicate sBIT chunk");
      FUNC0(png_ptr, length);
      return;
   }

   if (png_ptr->color_type == PNG_COLOR_TYPE_PALETTE)
      truelen = 3;
   else
      truelen = (png_size_t)png_ptr->channels;

   if (length != truelen || length > 4)
   {
      FUNC5(png_ptr, "Incorrect sBIT chunk length");
      FUNC0(png_ptr, length);
      return;
   }

   FUNC1(png_ptr, buf, truelen);
   if (FUNC0(png_ptr, 0))
      return;

   if (png_ptr->color_type & PNG_COLOR_MASK_COLOR)
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
   FUNC4(png_ptr, info_ptr, &(png_ptr->sig_bit));
}