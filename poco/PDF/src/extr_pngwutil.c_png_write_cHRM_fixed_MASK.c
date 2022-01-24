#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  png_uint_32 ;
typedef  int /*<<< orphan*/  png_structp ;
typedef  int /*<<< orphan*/  png_size_t ;
typedef  long png_fixed_point ;
typedef  int /*<<< orphan*/  png_byte ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_cHRM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,long,long) ; 
 int /*<<< orphan*/  png_cHRM ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

void /* PRIVATE */
FUNC5(png_structp png_ptr, png_fixed_point white_x,
   png_fixed_point white_y, png_fixed_point red_x, png_fixed_point red_y,
   png_fixed_point green_x, png_fixed_point green_y, png_fixed_point blue_x,
   png_fixed_point blue_y)
{
#ifdef PNG_USE_LOCAL_ARRAYS
   PNG_cHRM;
#endif
   png_byte buf[32];

   FUNC1(1, "in png_write_cHRM\n");
   /* each value is saved in 1/100,000ths */
   if (white_x > 80000L || white_y > 80000L || white_x + white_y > 100000L)
   {
      FUNC3(png_ptr, "Invalid fixed cHRM white point specified");
#if !defined(PNG_NO_CONSOLE_IO)
      FUNC0(stderr,"white_x=%ld, white_y=%ld\n",white_x, white_y);
#endif
      return;
   }
   FUNC2(buf, (png_uint_32)white_x);
   FUNC2(buf + 4, (png_uint_32)white_y);

   if (red_x + red_y > 100000L)
   {
      FUNC3(png_ptr, "Invalid cHRM fixed red point specified");
      return;
   }
   FUNC2(buf + 8, (png_uint_32)red_x);
   FUNC2(buf + 12, (png_uint_32)red_y);

   if (green_x + green_y > 100000L)
   {
      FUNC3(png_ptr, "Invalid fixed cHRM green point specified");
      return;
   }
   FUNC2(buf + 16, (png_uint_32)green_x);
   FUNC2(buf + 20, (png_uint_32)green_y);

   if (blue_x + blue_y > 100000L)
   {
      FUNC3(png_ptr, "Invalid fixed cHRM blue point specified");
      return;
   }
   FUNC2(buf + 24, (png_uint_32)blue_x);
   FUNC2(buf + 28, (png_uint_32)blue_y);

   FUNC4(png_ptr, png_cHRM, buf, (png_size_t)32);
}