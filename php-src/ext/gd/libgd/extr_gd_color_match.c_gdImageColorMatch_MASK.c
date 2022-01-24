#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_4__ {int sx; int sy; int colorsTotal; int** pixels; int** tpixels; int* red; int* green; int* blue; int* alpha; scalar_t__ trueColor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*) ; 
 int gdMaxColors ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int,int,int /*<<< orphan*/ ) ; 

int FUNC7 (gdImagePtr im1, gdImagePtr im2)
{
	unsigned long *buf; /* stores our calculations */
	unsigned long *bp; /* buf ptr */
	int color, rgb;
	int x,y;
	int count;

	if( !im1->trueColor ) {
		return -1; /* im1 must be True Color */
	}
	if( im2->trueColor ) {
		return -2; /* im2 must be indexed */
	}
	if( (im1->sx != im2->sx) || (im1->sy != im2->sy) ) {
		return -3; /* the images are meant to be the same dimensions */
	}
	if (im2->colorsTotal<1) {
		return -4; /* At least 1 color must be allocated */
	}

	buf = (unsigned long *)FUNC6(sizeof(unsigned long), 5 * gdMaxColors, 0);
	FUNC5( buf, 0, sizeof(unsigned long) * 5 * gdMaxColors );

	for (x=0; x<im1->sx; x++) {
		for( y=0; y<im1->sy; y++ ) {
			color = im2->pixels[y][x];
			rgb = im1->tpixels[y][x];
			bp = buf + (color * 5);
			(*(bp++))++;
			*(bp++) += FUNC4(rgb);
			*(bp++) += FUNC3(rgb);
			*(bp++) += FUNC2(rgb);
			*(bp++) += FUNC1(rgb);
		}
	}
	bp = buf;
	for (color=0; color<im2->colorsTotal; color++) {
		count = *(bp++);
		if( count > 0 ) {
			im2->red[color]		= *(bp++) / count;
			im2->green[color]	= *(bp++) / count;
			im2->blue[color]	= *(bp++) / count;
			im2->alpha[color]	= *(bp++) / count;
		} else {
			bp += 4;
		}
	}
	FUNC0(buf);
	return 0;
}