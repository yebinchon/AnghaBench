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
typedef  int /*<<< orphan*/  png_structrp ;
typedef  int /*<<< orphan*/  png_const_charp ;
typedef  scalar_t__ png_byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  png_sCAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 

void /* PRIVATE */
FUNC6(png_structrp png_ptr, int unit, png_const_charp width,
    png_const_charp height)
{
   png_byte buf[64];
   size_t wlen, hlen, total_len;

   FUNC1(1, "in png_write_sCAL_s");

   wlen = FUNC5(width);
   hlen = FUNC5(height);
   total_len = wlen + hlen + 2;

   if (total_len > 64)
   {
      FUNC3(png_ptr, "Can't write sCAL (buffer too small)");
      return;
   }

   buf[0] = (png_byte)unit;
   FUNC0(buf + 1, width, wlen + 1);      /* Append the '\0' here */
   FUNC0(buf + wlen + 2, height, hlen);  /* Do NOT append the '\0' here */

   FUNC2(3, "sCAL total length = %u", (unsigned int)total_len);
   FUNC4(png_ptr, png_sCAL, buf, total_len);
}