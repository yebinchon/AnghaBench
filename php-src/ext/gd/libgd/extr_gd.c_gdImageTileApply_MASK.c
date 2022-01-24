#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_9__ {int* tileColorMap; scalar_t__ trueColor; int /*<<< orphan*/ * alpha; int /*<<< orphan*/ * blue; int /*<<< orphan*/ * green; int /*<<< orphan*/ * red; struct TYPE_9__* tile; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11 (gdImagePtr im, int x, int y)
{
	gdImagePtr tile = im->tile;
	int srcx, srcy;
	int p;
	if (!tile) {
		return;
	}
	srcx = x % FUNC3(tile);
	srcy = y % FUNC4(tile);
	if (im->trueColor) {
		p = FUNC1(tile, srcx, srcy);
		if (p != FUNC2 (tile)) {
			if (!tile->trueColor) {
				p = FUNC6(tile->red[p], tile->green[p], tile->blue[p], tile->alpha[p]);
			}
			FUNC5(im, x, y, p);
		}
	} else {
		p = FUNC1(tile, srcx, srcy);
		/* Allow for transparency */
		if (p != FUNC2(tile)) {
			if (tile->trueColor) {
				/* Truecolor tile. Very slow on a palette destination. */
				FUNC5(im, x, y, FUNC0(im,
											FUNC10(p),
											FUNC9(p),
											FUNC8(p),
											FUNC7(p)));
			} else {
				FUNC5(im, x, y, im->tileColorMap[p]);
			}
		}
	}
}