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
typedef  int /*<<< orphan*/  gdIOCtxPtr ;
struct TYPE_5__ {int** tpixels; int** pixels; scalar_t__ trueColor; } ;

/* Variables and functions */
 int EOF ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

gdImagePtr FUNC4 (gdIOCtxPtr in)
{
	int sx, sy;
	int x, y;
	gdImagePtr im;

	/* Read the header */
	im = FUNC0(in, &sx, &sy);

	if (im == NULL) {
		goto fail1;
	}

	/* Then the data... */
	/* 2.0.12: support truecolor properly in .gd as well as in .gd2. Problem reported by Andreas Pfaller. */
	if (im->trueColor) {
		for (y = 0; y < sy; y++) {
			for (x = 0; x < sx; x++) {
				int pix;
				if (!FUNC2(&pix, in)) {
					goto fail2;
				}
				im->tpixels[y][x] = pix;
			}
		}
	} else {
		for (y = 0; y < sy; y++) {
			for (x = 0; x < sx; x++) {
				int ch;
				ch = FUNC1(in);
				if (ch == EOF) {
					goto fail2;
				}
				/* ROW-MAJOR IN GD 1.3 */
				im->pixels[y][x] = ch;
			}
		}
	}

	return im;

fail2:
	FUNC3 (im);
fail1:
	return 0;
}