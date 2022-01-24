#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_11__ {scalar_t__ trueColor; } ;
struct TYPE_10__ {int* brushColorMap; TYPE_3__* brush; scalar_t__ trueColor; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*,int,int) ; 
 int FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*,int,int) ; 
 int FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11 (gdImagePtr im, int x, int y)
{
	int lx, ly;
	int hy, hx;
	int x1, y1, x2, y2;
	int srcx, srcy;

	if (!im->brush) {
		return;
	}

	hy = FUNC5(im->brush) / 2;
	y1 = y - hy;
	y2 = y1 + FUNC5(im->brush);
	hx = FUNC4(im->brush) / 2;
	x1 = x - hx;
	x2 = x1 + FUNC4(im->brush);
	srcy = 0;

	if (im->trueColor) {
		if (im->brush->trueColor) {
			for (ly = y1; ly < y2; ly++) {
				srcx = 0;
				for (lx = x1; (lx < x2); lx++) {
					int p;
					p = FUNC3(im->brush, srcx, srcy);
					/* 2.0.9, Thomas Winzig: apply simple full transparency */
					if (p != FUNC2(im->brush)) {
						FUNC6(im, lx, ly, p);
					}
					srcx++;
				}
				srcy++;
			}
		} else {
			/* 2.0.12: Brush palette, image truecolor (thanks to Thorben Kundinger for pointing out the issue) */
			for (ly = y1; ly < y2; ly++) {
				srcx = 0;
				for (lx = x1; lx < x2; lx++) {
					int p, tc;
					p = FUNC1(im->brush, srcx, srcy);
					tc = FUNC3(im->brush, srcx, srcy);
					/* 2.0.9, Thomas Winzig: apply simple full transparency */
					if (p != FUNC2(im->brush)) {
						FUNC6(im, lx, ly, tc);
					}
					srcx++;
				}
				srcy++;
			}
		}
	} else {
		for (ly = y1; ly < y2; ly++) {
			srcx = 0;
			for (lx = x1; lx < x2; lx++) {
				int p;
				p = FUNC1(im->brush, srcx, srcy);
				/* Allow for non-square brushes! */
				if (p != FUNC2(im->brush)) {
					/* Truecolor brush. Very slow on a palette destination. */
					if (im->brush->trueColor) {
						FUNC6(im, lx, ly, FUNC0(im, FUNC10(p),
													 FUNC9(p),
													 FUNC8(p),
													 FUNC7(p)));
					} else {
						FUNC6(im, lx, ly, im->brushColorMap[p]);
					}
				}
				srcx++;
			}
			srcy++;
		}
	}
}