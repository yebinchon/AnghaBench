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
struct vars {int /*<<< orphan*/  nfa; struct colormap* cm; } ;
struct state {int dummy; } ;
struct colormap {scalar_t__* hicolormap; int hiarraycols; } ;
typedef  scalar_t__ color ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PLAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct state*,struct state*) ; 
 scalar_t__ FUNC2 (struct colormap*,scalar_t__*) ; 

__attribute__((used)) static void
FUNC3(struct vars *v,
			   int rownum,
			   struct state *lp,
			   struct state *rp,
			   color *lastsubcolor)
{
	struct colormap *cm = v->cm;
	color	   *pco;
	int			i;

	/* Apply subcolorhi() and make arc for each entry in row */
	pco = &cm->hicolormap[rownum * cm->hiarraycols];
	for (i = 0; i < cm->hiarraycols; pco++, i++)
	{
		color		sco = FUNC2(cm, pco);

		FUNC0();
		/* make the arc if needed */
		if (sco != *lastsubcolor)
		{
			FUNC1(v->nfa, PLAIN, sco, lp, rp);
			FUNC0();
			*lastsubcolor = sco;
		}
	}
}