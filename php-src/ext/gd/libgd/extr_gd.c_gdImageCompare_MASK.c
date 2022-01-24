#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_10__ {scalar_t__ interlace; scalar_t__ transparent; scalar_t__ trueColor; int sx; int sy; scalar_t__ colorsTotal; } ;

/* Variables and functions */
 int GD_CMP_COLOR ; 
 int GD_CMP_IMAGE ; 
 int GD_CMP_INTERLACE ; 
 int GD_CMP_NUM_COLORS ; 
 int GD_CMP_SIZE_X ; 
 int GD_CMP_SIZE_Y ; 
 int GD_CMP_TRANSPARENT ; 
 int GD_CMP_TRUECOLOR ; 
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int FUNC3 (TYPE_1__*,int,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (TYPE_1__*,int,int) ; 

int FUNC6 (gdImagePtr im1, gdImagePtr im2)
{
	int x, y;
	int p1, p2;
	int cmpStatus = 0;
	int sx, sy;

	if (im1->interlace != im2->interlace) {
		cmpStatus |= GD_CMP_INTERLACE;
	}

	if (im1->transparent != im2->transparent) {
		cmpStatus |= GD_CMP_TRANSPARENT;
	}

	if (im1->trueColor != im2->trueColor) {
		cmpStatus |= GD_CMP_TRUECOLOR;
	}

	sx = im1->sx;
	if (im1->sx != im2->sx) {
		cmpStatus |= GD_CMP_SIZE_X + GD_CMP_IMAGE;
		if (im2->sx < im1->sx) {
			sx = im2->sx;
		}
	}

	sy = im1->sy;
	if (im1->sy != im2->sy) {
		cmpStatus |= GD_CMP_SIZE_Y + GD_CMP_IMAGE;
		if (im2->sy < im1->sy) {
			sy = im2->sy;
		}
	}

	if (im1->colorsTotal != im2->colorsTotal) {
		cmpStatus |= GD_CMP_NUM_COLORS;
	}

	for (y = 0; y < sy; y++) {
		for (x = 0; x < sx; x++) {
			p1 = im1->trueColor ? FUNC5(im1, x, y) : FUNC3(im1, x, y);
			p2 = im2->trueColor ? FUNC5(im2, x, y) : FUNC3(im2, x, y);

			if (FUNC4(im1, p1) != FUNC4(im2, p2)) {
				cmpStatus |= GD_CMP_COLOR + GD_CMP_IMAGE;
				break;
			}
			if (FUNC2(im1, p1) != FUNC2(im2, p2)) {
				cmpStatus |= GD_CMP_COLOR + GD_CMP_IMAGE;
				break;
			}
			if (FUNC1(im1, p1) != FUNC1(im2, p2)) {
				cmpStatus |= GD_CMP_COLOR + GD_CMP_IMAGE;
				break;
			}
#if 0
			/* Soon we'll add alpha channel to palettes */
			if (gdImageAlpha(im1, p1) != gdImageAlpha(im2, p2)) {
				cmpStatus |= GD_CMP_COLOR + GD_CMP_IMAGE;
				break;
			}
#endif
		}
		if (cmpStatus & GD_CMP_COLOR) {
			break;
		}
	}

	return cmpStatus;
}