#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t_chunk_info ;
typedef  TYPE_1__* gdImagePtr ;
typedef  int /*<<< orphan*/  gdIOCtxPtr ;
struct TYPE_7__ {int /*<<< orphan*/  colorsTotal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*,int*,int*,int*,int*,int*,int*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int,int) ; 
 TYPE_1__* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static gdImagePtr FUNC9 (gdIOCtxPtr in, int *sx, int *sy, int *cs, int *vers, int *fmt, int *ncx, int *ncy, t_chunk_info ** cidx)
{
	gdImagePtr im;

	if (FUNC1 (in, sx, sy, cs, vers, fmt, ncx, ncy, cidx) != 1) {
		FUNC0(FUNC8("Bad GD2 header"));
		goto fail1;
	}

	if (FUNC3(*fmt)) {
		im = FUNC6(*sx, *sy);
	} else {
		im = FUNC5(*sx, *sy);
	}
	if (im == NULL) {
		FUNC0(FUNC8("Could not create gdImage"));
		goto fail2;
	}

	if (!FUNC2(in, im, (*vers) == 2)) {
		FUNC0(FUNC8("Could not read color palette"));
		goto fail3;
	}
	FUNC0(FUNC8("Image palette completed: %d colours", im->colorsTotal));

	return im;

fail3:
	FUNC7(im);
fail2:
	FUNC4(*cidx);
fail1:
	return 0;
}