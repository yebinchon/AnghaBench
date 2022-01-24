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
typedef  int /*<<< orphan*/  png_structrp ;
typedef  scalar_t__ png_fixed_point ;
typedef  int /*<<< orphan*/  png_byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  png_gAMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

void /* PRIVATE */
FUNC3(png_structrp png_ptr, png_fixed_point file_gamma)
{
   png_byte buf[4];

   FUNC0(1, "in png_write_gAMA");

   /* file_gamma is saved in 1/100,000ths */
   FUNC1(buf, (png_uint_32)file_gamma);
   FUNC2(png_ptr, png_gAMA, buf, 4);
}