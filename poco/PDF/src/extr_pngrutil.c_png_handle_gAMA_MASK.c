#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int png_uint_32 ;
typedef  TYPE_1__* png_structp ;
typedef  TYPE_2__* png_infop ;
typedef  scalar_t__ png_fixed_point ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_14__ {int valid; } ;
struct TYPE_13__ {int mode; float gamma; } ;

/* Variables and functions */
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_HAVE_PLTE ; 
 int PNG_INFO_gAMA ; 
 int PNG_INFO_sRGB ; 
 scalar_t__ FUNC0 (scalar_t__,long,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,float) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  stderr ; 

void /* PRIVATE */
FUNC10(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   png_fixed_point igamma;
#ifdef PNG_FLOATING_POINT_SUPPORTED
   float file_gamma;
#endif
   png_byte buf[4];

   FUNC4(1, "in png_handle_gAMA\n");

   if (!(png_ptr->mode & PNG_HAVE_IHDR))
      FUNC5(png_ptr, "Missing IHDR before gAMA");
   else if (png_ptr->mode & PNG_HAVE_IDAT)
   {
      FUNC9(png_ptr, "Invalid gAMA after IDAT");
      FUNC2(png_ptr, length);
      return;
   }
   else if (png_ptr->mode & PNG_HAVE_PLTE)
      /* Should be an error, but we can cope with it */
      FUNC9(png_ptr, "Out of place gAMA chunk");

   if (info_ptr != NULL && (info_ptr->valid & PNG_INFO_gAMA)
#if defined(PNG_READ_sRGB_SUPPORTED)
      && !(info_ptr->valid & PNG_INFO_sRGB)
#endif
      )
   {
      FUNC9(png_ptr, "Duplicate gAMA chunk");
      FUNC2(png_ptr, length);
      return;
   }

   if (length != 4)
   {
      FUNC9(png_ptr, "Incorrect gAMA chunk length");
      FUNC2(png_ptr, length);
      return;
   }

   FUNC3(png_ptr, buf, 4);
   if (FUNC2(png_ptr, 0))
      return;

   igamma = (png_fixed_point)FUNC6(buf);
   /* check for zero gamma */
   if (igamma == 0)
      {
         FUNC9(png_ptr,
           "Ignoring gAMA chunk with gamma=0");
         return;
      }

#if defined(PNG_READ_sRGB_SUPPORTED)
   if (info_ptr != NULL && (info_ptr->valid & PNG_INFO_sRGB))
      if (PNG_OUT_OF_RANGE(igamma, 45500L, 500))
      {
         png_warning(png_ptr,
           "Ignoring incorrect gAMA value when sRGB is also present");
#ifndef PNG_NO_CONSOLE_IO
         fprintf(stderr, "gamma = (%d/100000)\n", (int)igamma);
#endif
         return;
      }
#endif /* PNG_READ_sRGB_SUPPORTED */

#ifdef PNG_FLOATING_POINT_SUPPORTED
   file_gamma = (float)igamma / (float)100000.0;
#  ifdef PNG_READ_GAMMA_SUPPORTED
     png_ptr->gamma = file_gamma;
#  endif
     png_set_gAMA(png_ptr, info_ptr, file_gamma);
#endif
#ifdef PNG_FIXED_POINT_SUPPORTED
   png_set_gAMA_fixed(png_ptr, info_ptr, igamma);
#endif
}