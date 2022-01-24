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
typedef  scalar_t__ png_uint_32 ;
typedef  int /*<<< orphan*/  png_structp ;
typedef  int /*<<< orphan*/  png_size_t ;
typedef  int /*<<< orphan*/  png_byte ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_gAMA ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  png_gAMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void /* PRIVATE */
FUNC3(png_structp png_ptr, double file_gamma)
{
#ifdef PNG_USE_LOCAL_ARRAYS
   PNG_gAMA;
#endif
   png_uint_32 igamma;
   png_byte buf[4];

   FUNC0(1, "in png_write_gAMA\n");
   /* file_gamma is saved in 1/100,000ths */
   igamma = (png_uint_32)(file_gamma * 100000.0 + 0.5);
   FUNC1(buf, igamma);
   FUNC2(png_ptr, png_gAMA, buf, (png_size_t)4);
}