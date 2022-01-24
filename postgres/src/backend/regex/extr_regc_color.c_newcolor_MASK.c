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
struct colormap {size_t free; size_t ncds; int max; struct colordesc* cd; struct colordesc* cdspace; } ;
struct colordesc {size_t sub; scalar_t__ flags; int /*<<< orphan*/  firstchr; int /*<<< orphan*/ * arcs; scalar_t__ nuchrs; scalar_t__ nschrs; } ;
typedef  int /*<<< orphan*/  color ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHR_MIN ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  COLORLESS ; 
 scalar_t__ FUNC2 (size_t) ; 
 int MAX_COLOR ; 
 size_t NOSUB ; 
 scalar_t__ FUNC3 (struct colordesc*,size_t) ; 
 int /*<<< orphan*/  REG_ECOLORS ; 
 int /*<<< orphan*/  REG_ESPACE ; 
 int FUNC4 (struct colordesc*) ; 
 int /*<<< orphan*/  FUNC5 (struct colordesc*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static color					/* COLORLESS for error */
FUNC8(struct colormap *cm)
{
	struct colordesc *cd;
	size_t		n;

	if (FUNC1())
		return COLORLESS;

	if (cm->free != 0)
	{
		FUNC6(cm->free > 0);
		FUNC6((size_t) cm->free < cm->ncds);
		cd = &cm->cd[cm->free];
		FUNC6(FUNC4(cd));
		FUNC6(cd->arcs == NULL);
		cm->free = cd->sub;
	}
	else if (cm->max < cm->ncds - 1)
	{
		cm->max++;
		cd = &cm->cd[cm->max];
	}
	else
	{
		/* oops, must allocate more */
		struct colordesc *newCd;

		if (cm->max == MAX_COLOR)
		{
			FUNC0(REG_ECOLORS);
			return COLORLESS;	/* too many colors */
		}

		n = cm->ncds * 2;
		if (n > MAX_COLOR + 1)
			n = MAX_COLOR + 1;
		if (cm->cd == cm->cdspace)
		{
			newCd = (struct colordesc *) FUNC2(n * sizeof(struct colordesc));
			if (newCd != NULL)
				FUNC7(FUNC5(newCd), FUNC5(cm->cdspace), cm->ncds *
					   sizeof(struct colordesc));
		}
		else
			newCd = (struct colordesc *)
				FUNC3(cm->cd, n * sizeof(struct colordesc));
		if (newCd == NULL)
		{
			FUNC0(REG_ESPACE);
			return COLORLESS;
		}
		cm->cd = newCd;
		cm->ncds = n;
		FUNC6(cm->max < cm->ncds - 1);
		cm->max++;
		cd = &cm->cd[cm->max];
	}

	cd->nschrs = 0;
	cd->nuchrs = 0;
	cd->sub = NOSUB;
	cd->arcs = NULL;
	cd->firstchr = CHR_MIN;		/* in case never set otherwise */
	cd->flags = 0;

	return (color) (cd - cm->cd);
}