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
typedef  scalar_t__ png_byte ;

/* Variables and functions */
 int PNG_RESOLUTION_LAST ; 
 int /*<<< orphan*/  PNG_pHYs ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  png_pHYs ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 

void /* PRIVATE */
FUNC4(png_structp png_ptr, png_uint_32 x_pixels_per_unit,
   png_uint_32 y_pixels_per_unit,
   int unit_type)
{
#ifdef PNG_USE_LOCAL_ARRAYS
   PNG_pHYs;
#endif
   png_byte buf[9];

   FUNC0(1, "in png_write_pHYs\n");
   if (unit_type >= PNG_RESOLUTION_LAST)
      FUNC2(png_ptr, "Unrecognized unit type for pHYs chunk");

   FUNC1(buf, x_pixels_per_unit);
   FUNC1(buf + 4, y_pixels_per_unit);
   buf[8] = (png_byte)unit_type;

   FUNC3(png_ptr, png_pHYs, buf, (png_size_t)9);
}