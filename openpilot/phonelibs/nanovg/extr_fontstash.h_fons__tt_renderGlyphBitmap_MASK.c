#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  font; } ;
typedef  TYPE_1__ FONSttFontImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int,int,int,float,float,int) ; 

void FUNC1(FONSttFontImpl *font, unsigned char *output, int outWidth, int outHeight, int outStride,
								float scaleX, float scaleY, int glyph)
{
	FUNC0(&font->font, output, outWidth, outHeight, outStride, scaleX, scaleY, glyph);
}