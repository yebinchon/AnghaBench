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
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,float,float,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int*,int*) ; 

int FUNC3(FONSttFontImpl *font, int glyph, float size, float scale,
							  int *advance, int *lsb, int *x0, int *y0, int *x1, int *y1)
{
	FUNC0(size);
	FUNC2(&font->font, glyph, advance, lsb);
	FUNC1(&font->font, glyph, scale, scale, x0, y0, x1, y1);
	return 1;
}