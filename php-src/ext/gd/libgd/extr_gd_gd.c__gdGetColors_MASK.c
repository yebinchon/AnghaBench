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
typedef  TYPE_1__* gdImagePtr ;
typedef  int /*<<< orphan*/  gdIOCtx ;
struct TYPE_3__ {int trueColor; int colorsTotal; int transparent; int* red; int* green; int* blue; int* alpha; scalar_t__* open; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ *) ; 
 int gdMaxColors ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

int FUNC5 (gdIOCtx * in, gdImagePtr im, int gd2xFlag)
{
	int i;
	if (gd2xFlag) {
		int trueColorFlag;
		if (!FUNC1(&trueColorFlag, in)) {
			goto fail1;
		}
		/* 2.0.12: detect bad truecolor .gd files created by pre-2.0.12.
		 * Beginning in 2.0.12 truecolor is indicated by the initial 2-byte
		 * signature.
		 */
		if (trueColorFlag != im->trueColor) {
			goto fail1;
		}
		/* This should have been a word all along */
		if (!im->trueColor) {
			if (!FUNC3(&im->colorsTotal, in)) {
				goto fail1;
			}
			if (im->colorsTotal > gdMaxColors) {
				goto fail1;
			}
		}
		/* Int to accommodate truecolor single-color transparency */
		if (!FUNC2(&im->transparent, in)) {
			goto fail1;
		}
	} else {
		if (!FUNC1(&im->colorsTotal, in)) {
			goto fail1;
		}
		if (!FUNC3(&im->transparent, in)) {
			goto fail1;
		}
		if (im->transparent == 257) {
			im->transparent = (-1);
		}
	}

	FUNC0(FUNC4("Pallette had %d colours (T=%d)\n", im->colorsTotal, im->transparent));

	if (im->trueColor) {
		return TRUE;
	}

	for (i = 0; i < gdMaxColors; i++) {
		if (!FUNC1(&im->red[i], in)) {
			goto fail1;
		}
		if (!FUNC1(&im->green[i], in)) {
			goto fail1;
		}
		if (!FUNC1(&im->blue[i], in)) {
			goto fail1;
		}
		if (gd2xFlag) {
			if (!FUNC1(&im->alpha[i], in)) {
				goto fail1;
			}
		}
	}

	for (i = 0; i < im->colorsTotal; i++) {
		im->open[i] = 0;
	}

	return TRUE;
fail1:
	return FALSE;
}