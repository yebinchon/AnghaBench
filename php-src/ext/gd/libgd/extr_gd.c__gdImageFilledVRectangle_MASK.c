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
typedef  int /*<<< orphan*/  gdImagePtr ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC3 (gdImagePtr im, int x1, int y1, int x2, int y2, int color)
{
	int x, y;

	if (x1 == x2 && y1 == y2) {
		FUNC2(im, x1, y1, color);
		return;
	}

	if (x1 > x2) {
		x = x1;
		x1 = x2;
		x2 = x;
	}

	if (y1 > y2) {
		y = y1;
		y1 = y2;
		y2 = y;
	}

	if (x1 < 0) {
		x1 = 0;
	}

	if (x2 >= FUNC0(im)) {
		x2 = FUNC0(im) - 1;
	}

	if (y1 < 0) {
		y1 = 0;
	}

	if (y2 >= FUNC1(im)) {
		y2 = FUNC1(im) - 1;
	}

	for (y = y1; (y <= y2); y++) {
		for (x = x1; (x <= x2); x++) {
			FUNC2 (im, x, y, color);
		}
	}
}