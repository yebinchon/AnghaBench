#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdImagePtr ;
struct TYPE_5__ {int thick; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int) ; 

__attribute__((used)) static void FUNC2(gdImagePtr im, int x, int y1, int y2, int col)
{
	if (im->thick > 1) {
		int thickhalf = im->thick >> 1;
		FUNC0(im, x - thickhalf, y1, x + im->thick - thickhalf - 1, y2, col);
	} else {
		if (y2 < y1) {
			int t = y1;
			y1 = y2;
			y2 = t;
		}

		for (;y1 <= y2; y1++) {
			FUNC1(im, x, y1, col);
		}
	}
	return;
}