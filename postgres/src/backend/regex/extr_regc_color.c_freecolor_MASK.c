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
struct colormap {size_t max; scalar_t__ free; struct colordesc* cd; } ;
struct colordesc {size_t sub; scalar_t__ nschrs; scalar_t__ nuchrs; int /*<<< orphan*/  flags; int /*<<< orphan*/ * arcs; } ;
typedef  size_t color ;

/* Variables and functions */
 int /*<<< orphan*/  FREECOL ; 
 size_t NOSUB ; 
 scalar_t__ FUNC0 (struct colordesc*) ; 
 size_t WHITE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct colormap *cm,
		  color co)
{
	struct colordesc *cd = &cm->cd[co];
	color		pco,
				nco;			/* for freelist scan */

	FUNC1(co >= 0);
	if (co == WHITE)
		return;

	FUNC1(cd->arcs == NULL);
	FUNC1(cd->sub == NOSUB);
	FUNC1(cd->nschrs == 0);
	FUNC1(cd->nuchrs == 0);
	cd->flags = FREECOL;

	if ((size_t) co == cm->max)
	{
		while (cm->max > WHITE && FUNC0(&cm->cd[cm->max]))
			cm->max--;
		FUNC1(cm->free >= 0);
		while ((size_t) cm->free > cm->max)
			cm->free = cm->cd[cm->free].sub;
		if (cm->free > 0)
		{
			FUNC1(cm->free < cm->max);
			pco = cm->free;
			nco = cm->cd[pco].sub;
			while (nco > 0)
				if ((size_t) nco > cm->max)
				{
					/* take this one out of freelist */
					nco = cm->cd[nco].sub;
					cm->cd[pco].sub = nco;
				}
				else
				{
					FUNC1(nco < cm->max);
					pco = nco;
					nco = cm->cd[pco].sub;
				}
		}
	}
	else
	{
		cd->sub = cm->free;
		cm->free = (color) (cd - cm->cd);
	}
}