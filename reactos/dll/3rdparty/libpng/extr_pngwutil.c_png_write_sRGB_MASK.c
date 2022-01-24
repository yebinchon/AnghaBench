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
typedef  scalar_t__ png_byte ;

/* Variables and functions */
 int PNG_sRGB_INTENT_LAST ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  png_sRGB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 

void /* PRIVATE */
FUNC3(png_structrp png_ptr, int srgb_intent)
{
   png_byte buf[1];

   FUNC0(1, "in png_write_sRGB");

   if (srgb_intent >= PNG_sRGB_INTENT_LAST)
      FUNC1(png_ptr,
          "Invalid sRGB rendering intent specified");

   buf[0]=(png_byte)srgb_intent;
   FUNC2(png_ptr, png_sRGB, buf, 1);
}