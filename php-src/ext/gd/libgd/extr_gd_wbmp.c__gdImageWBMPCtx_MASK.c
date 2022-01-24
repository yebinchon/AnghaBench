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
typedef  int /*<<< orphan*/  gdImagePtr ;
typedef  int /*<<< orphan*/  gdIOCtx ;
struct TYPE_5__ {int /*<<< orphan*/ * bitmap; } ;
typedef  TYPE_1__ Wbmp ;

/* Variables and functions */
 int /*<<< orphan*/  WBMP_BLACK ; 
 int /*<<< orphan*/  WBMP_WHITE ; 
 TYPE_1__* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  gd_putout ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(gdImagePtr image, int fg, gdIOCtx *out)
{
	int x, y, pos;
	Wbmp *wbmp;

	/* create the WBMP */
	if ((wbmp = FUNC0 (FUNC3 (image), FUNC4 (image), WBMP_WHITE)) == NULL) {
		FUNC5("Could not create WBMP");
		return 1;
	}

	/* fill up the WBMP structure */
	pos = 0;
	for (y = 0; y < FUNC4(image); y++) {
		for (x = 0; x < FUNC3(image); x++) {
			if (FUNC2 (image, x, y) == fg) {
				wbmp->bitmap[pos] = WBMP_BLACK;
			}
			pos++;
		}
	}

	/* write the WBMP to a gd file descriptor */
	if (FUNC6 (wbmp, &gd_putout, out)) {
		FUNC1(wbmp);
		FUNC5("Could not save WBMP");
		return 1;
	}

	/* des submitted this bugfix: gdFree the memory. */
	FUNC1(wbmp);

	return 0;
}