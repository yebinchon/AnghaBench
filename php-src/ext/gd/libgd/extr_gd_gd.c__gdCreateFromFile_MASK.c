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
typedef  int /*<<< orphan*/  gdIOCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 

__attribute__((used)) static gdImagePtr FUNC7 (gdIOCtx * in, int *sx, int *sy)
{
	gdImagePtr im;
	int gd2xFlag = 0;
	int trueColorFlag = 0;

	if (!FUNC2(sx, in)) {
		goto fail1;
	}
	if (*sx == 65535 || *sx == 65534) {
		/* This is a gd 2.0 .gd file */
		gd2xFlag = 1;
		/* 2.0.12: 65534 signals a truecolor .gd file. There is a slight redundancy here but we can live with it. */
		if (*sx == 65534) {
			trueColorFlag = 1;
		}
		if (!FUNC2(sx, in)) {
			goto fail1;
		}
	}
	if (!FUNC2(sy, in)) {
		goto fail1;
	}

	FUNC0(FUNC6("Image is %dx%d\n", *sx, *sy));

	if (trueColorFlag) {
		im = FUNC4(*sx, *sy);
	} else {
		im = FUNC3(*sx, *sy);
	}
	if(!im) {
		goto fail1;
	}
	if (!FUNC1(in, im, gd2xFlag)) {
		goto fail2;
	}

	return im;
fail2:
	FUNC5(im);
fail1:
	return 0;
}