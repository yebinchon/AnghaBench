#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct seg {int dummy; } ;
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_6__ {int colorsTotal; int alphaBlendingFlag; int sx; int sy; int /*<<< orphan*/  trueColor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct seg*) ; 
 int FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int) ; 
 int gdTiled ; 
 scalar_t__ FUNC6 (int,int,int) ; 

void FUNC7(gdImagePtr im, int x, int y, int nc)
{
	int l, x1, x2, dy;
	int oc;   /* old pixel value */
	int wx2,wy2;

	int alphablending_bak;

	/* stack of filled segments */
	/* struct seg stack[FILL_MAX],*sp = stack; */
	struct seg *stack = NULL;
	struct seg *sp;

	if (!im->trueColor && nc > (im->colorsTotal -1)) {
		return;
	}

	alphablending_bak = im->alphaBlendingFlag;
	im->alphaBlendingFlag = 0;

	if (nc==gdTiled){
		FUNC2(im,x,y,nc);
		im->alphaBlendingFlag = alphablending_bak;
		return;
	}

	wx2=im->sx;wy2=im->sy;
	oc = FUNC4(im, x, y);
	if (oc==nc || x<0 || x>wx2 || y<0 || y>wy2) {
		im->alphaBlendingFlag = alphablending_bak;
		return;
	}

	/* Do not use the 4 neighbors implementation with
	 * small images
	 */
	if (im->sx < 4) {
		int ix = x, iy = y, c;
		do {
			do {
				c = FUNC4(im, ix, iy);
				if (c != oc) {
					goto done;
				}
				FUNC5(im, ix, iy, nc);
			} while(ix++ < (im->sx -1));
			ix = x;
		} while(iy++ < (im->sy -1));
		goto done;
	}

	stack = (struct seg *)FUNC6(sizeof(struct seg), ((int)(im->sy*im->sx)/4), 1);
	sp = stack;

	/* required! */
	FUNC1(y,x,x,1);
	/* seed segment (popped 1st) */
 	FUNC1(y+1, x, x, -1);
	while (sp>stack) {
		FUNC0(y, x1, x2, dy);

		for (x=x1; x>=0 && FUNC4(im,x, y)==oc; x--) {
			FUNC5(im,x, y, nc);
		}
		if (x>=x1) {
			goto skip;
		}
		l = x+1;

                /* leak on left? */
		if (l<x1) {
			FUNC1(y, l, x1-1, -dy);
		}
		x = x1+1;
		do {
			for (; x<=wx2 && FUNC4(im,x, y)==oc; x++) {
				FUNC5(im, x, y, nc);
			}
			FUNC1(y, l, x-1, dy);
			/* leak on right? */
			if (x>x2+1) {
				FUNC1(y, x2+1, x-1, -dy);
			}
skip:
			for (x++; x<=x2 && (FUNC4(im, x, y)!=oc); x++);

			l = x;
		} while (x<=x2);
	}

	FUNC3(stack);

done:
	im->alphaBlendingFlag = alphablending_bak;
}