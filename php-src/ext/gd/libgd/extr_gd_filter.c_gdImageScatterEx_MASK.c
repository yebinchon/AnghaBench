#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gdScatterPtr ;
typedef  TYPE_2__* gdImagePtr ;
struct TYPE_9__ {int sy; int sx; } ;
struct TYPE_8__ {int sub; int plus; int num_colors; int* colors; int /*<<< orphan*/  seed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int) ; 
 int FUNC1 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(gdImagePtr im, gdScatterPtr scatter)
{
	register int x, y;
	int dest_x, dest_y;
	int pxl, new_pxl;
	unsigned int n;
	int sub = scatter->sub, plus = scatter->plus;

	if (plus == 0 && sub == 0) {
		return 1;
	}
	else if (sub >= plus) {
		return 0;
	}

	(void)FUNC4(scatter->seed);

	if (scatter->num_colors) {
		for (y = 0; y < im->sy; y++) {
			for (x = 0; x < im->sx; x++) {
				dest_x = (int)(x + ((FUNC3() % (plus - sub)) + sub));
				dest_y = (int)(y + ((FUNC3() % (plus - sub)) + sub));

				if (!FUNC0(im, dest_x, dest_y)) {
					continue;
				}

				pxl = FUNC1(im, x, y);
				new_pxl = FUNC1(im, dest_x, dest_y);

				for (n = 0; n < scatter->num_colors; n++) {
					if (pxl == scatter->colors[n]) {
						FUNC2(im, dest_x, dest_y, pxl);
						FUNC2(im, x, y, new_pxl);
					}
				}
			}
		}
	}
	else {
		for (y = 0; y < im->sy; y++) {
			for (x = 0; x < im->sx; x++) {
				dest_x = (int)(x + ((FUNC3() % (plus - sub)) + sub));
				dest_y = (int)(y + ((FUNC3() % (plus - sub)) + sub));

				if (!FUNC0(im, dest_x, dest_y)) {
					continue;
				}

				pxl = FUNC1(im, x, y);
				new_pxl = FUNC1(im, dest_x, dest_y);

				FUNC2(im, dest_x, dest_y, pxl);
				FUNC2(im, x, y, new_pxl);
			}
		}
	}

	return 1;
}