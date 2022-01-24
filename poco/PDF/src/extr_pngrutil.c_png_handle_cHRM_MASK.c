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
typedef  float png_fixed_point ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_14__ {int valid; } ;
struct TYPE_13__ {int mode; } ;

/* Variables and functions */
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_HAVE_PLTE ; 
 int PNG_INFO_cHRM ; 
 int PNG_INFO_sRGB ; 
 scalar_t__ FUNC0 (float,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,float,float,float,float) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,float,float,float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*,float,float,float,float,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  stderr ; 

void /* PRIVATE */
FUNC10(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   png_byte buf[4];
#ifdef PNG_FLOATING_POINT_SUPPORTED
   float white_x, white_y, red_x, red_y, green_x, green_y, blue_x, blue_y;
#endif
   png_fixed_point int_x_white, int_y_white, int_x_red, int_y_red, int_x_green,
      int_y_green, int_x_blue, int_y_blue;

   png_uint_32 uint_x, uint_y;

   FUNC4(1, "in png_handle_cHRM\n");

   if (!(png_ptr->mode & PNG_HAVE_IHDR))
      FUNC5(png_ptr, "Missing IHDR before cHRM");
   else if (png_ptr->mode & PNG_HAVE_IDAT)
   {
      FUNC9(png_ptr, "Invalid cHRM after IDAT");
      FUNC2(png_ptr, length);
      return;
   }
   else if (png_ptr->mode & PNG_HAVE_PLTE)
      /* Should be an error, but we can cope with it */
      FUNC9(png_ptr, "Missing PLTE before cHRM");

   if (info_ptr != NULL && (info_ptr->valid & PNG_INFO_cHRM)
#if defined(PNG_READ_sRGB_SUPPORTED)
      && !(info_ptr->valid & PNG_INFO_sRGB)
#endif
      )
   {
      FUNC9(png_ptr, "Duplicate cHRM chunk");
      FUNC2(png_ptr, length);
      return;
   }

   if (length != 32)
   {
      FUNC9(png_ptr, "Incorrect cHRM chunk length");
      FUNC2(png_ptr, length);
      return;
   }

   FUNC3(png_ptr, buf, 4);
   uint_x = FUNC6(buf);

   FUNC3(png_ptr, buf, 4);
   uint_y = FUNC6(buf);

   if (uint_x > 80000L || uint_y > 80000L ||
      uint_x + uint_y > 100000L)
   {
      FUNC9(png_ptr, "Invalid cHRM white point");
      FUNC2(png_ptr, 24);
      return;
   }
   int_x_white = (png_fixed_point)uint_x;
   int_y_white = (png_fixed_point)uint_y;

   FUNC3(png_ptr, buf, 4);
   uint_x = FUNC6(buf);

   FUNC3(png_ptr, buf, 4);
   uint_y = FUNC6(buf);

   if (uint_x + uint_y > 100000L)
   {
      FUNC9(png_ptr, "Invalid cHRM red point");
      FUNC2(png_ptr, 16);
      return;
   }
   int_x_red = (png_fixed_point)uint_x;
   int_y_red = (png_fixed_point)uint_y;

   FUNC3(png_ptr, buf, 4);
   uint_x = FUNC6(buf);

   FUNC3(png_ptr, buf, 4);
   uint_y = FUNC6(buf);

   if (uint_x + uint_y > 100000L)
   {
      FUNC9(png_ptr, "Invalid cHRM green point");
      FUNC2(png_ptr, 8);
      return;
   }
   int_x_green = (png_fixed_point)uint_x;
   int_y_green = (png_fixed_point)uint_y;

   FUNC3(png_ptr, buf, 4);
   uint_x = FUNC6(buf);

   FUNC3(png_ptr, buf, 4);
   uint_y = FUNC6(buf);

   if (uint_x + uint_y > 100000L)
   {
      FUNC9(png_ptr, "Invalid cHRM blue point");
      FUNC2(png_ptr, 0);
      return;
   }
   int_x_blue = (png_fixed_point)uint_x;
   int_y_blue = (png_fixed_point)uint_y;

#ifdef PNG_FLOATING_POINT_SUPPORTED
   white_x = (float)int_x_white / (float)100000.0;
   white_y = (float)int_y_white / (float)100000.0;
   red_x   = (float)int_x_red   / (float)100000.0;
   red_y   = (float)int_y_red   / (float)100000.0;
   green_x = (float)int_x_green / (float)100000.0;
   green_y = (float)int_y_green / (float)100000.0;
   blue_x  = (float)int_x_blue  / (float)100000.0;
   blue_y  = (float)int_y_blue  / (float)100000.0;
#endif

#if defined(PNG_READ_sRGB_SUPPORTED)
   if ((info_ptr != NULL) && (info_ptr->valid & PNG_INFO_sRGB))
      {
      if (PNG_OUT_OF_RANGE(int_x_white, 31270,  1000) ||
          PNG_OUT_OF_RANGE(int_y_white, 32900,  1000) ||
          PNG_OUT_OF_RANGE(int_x_red,   64000L, 1000) ||
          PNG_OUT_OF_RANGE(int_y_red,   33000,  1000) ||
          PNG_OUT_OF_RANGE(int_x_green, 30000,  1000) ||
          PNG_OUT_OF_RANGE(int_y_green, 60000L, 1000) ||
          PNG_OUT_OF_RANGE(int_x_blue,  15000,  1000) ||
          PNG_OUT_OF_RANGE(int_y_blue,   6000,  1000))
         {
            png_warning(png_ptr,
              "Ignoring incorrect cHRM value when sRGB is also present");
#ifndef PNG_NO_CONSOLE_IO
#ifdef PNG_FLOATING_POINT_SUPPORTED
            fprintf(stderr,"wx=%f, wy=%f, rx=%f, ry=%f\n",
               white_x, white_y, red_x, red_y);
            fprintf(stderr,"gx=%f, gy=%f, bx=%f, by=%f\n",
               green_x, green_y, blue_x, blue_y);
#else
            fprintf(stderr,"wx=%ld, wy=%ld, rx=%ld, ry=%ld\n",
               int_x_white, int_y_white, int_x_red, int_y_red);
            fprintf(stderr,"gx=%ld, gy=%ld, bx=%ld, by=%ld\n",
               int_x_green, int_y_green, int_x_blue, int_y_blue);
#endif
#endif /* PNG_NO_CONSOLE_IO */
         }
         png_crc_finish(png_ptr, 0);
         return;
      }
#endif /* PNG_READ_sRGB_SUPPORTED */

#ifdef PNG_FLOATING_POINT_SUPPORTED
   png_set_cHRM(png_ptr, info_ptr,
      white_x, white_y, red_x, red_y, green_x, green_y, blue_x, blue_y);
#endif
#ifdef PNG_FIXED_POINT_SUPPORTED
   png_set_cHRM_fixed(png_ptr, info_ptr,
      int_x_white, int_y_white, int_x_red, int_y_red, int_x_green,
      int_y_green, int_x_blue, int_y_blue);
#endif
   if (FUNC2(png_ptr, 0))
      return;
}