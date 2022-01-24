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
struct nfa {int dummy; } ;
struct colormap {struct colordesc* cd; } ;
struct colordesc {size_t sub; scalar_t__ nschrs; scalar_t__ nuchrs; struct arc* arcs; } ;
struct arc {size_t co; int /*<<< orphan*/  to; int /*<<< orphan*/  from; int /*<<< orphan*/  type; struct arc* colorchain; } ;
typedef  size_t color ;

/* Variables and functions */
 struct colordesc* FUNC0 (struct colormap*) ; 
 size_t NOSUB ; 
 scalar_t__ FUNC1 (struct colordesc*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct colormap*,struct arc*) ; 
 int /*<<< orphan*/  FUNC4 (struct colormap*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct nfa*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct colormap*,struct arc*) ; 

__attribute__((used)) static void
FUNC7(struct nfa *nfa,
		 struct colormap *cm)
{
	struct colordesc *cd;
	struct colordesc *end = FUNC0(cm);
	struct colordesc *scd;
	struct arc *a;
	color		co;
	color		sco;

	for (cd = cm->cd, co = 0; cd < end; cd++, co++)
	{
		sco = cd->sub;
		if (FUNC1(cd) || sco == NOSUB)
		{
			/* has no subcolor, no further action */
		}
		else if (sco == co)
		{
			/* is subcolor, let parent deal with it */
		}
		else if (cd->nschrs == 0 && cd->nuchrs == 0)
		{
			/* parent empty, its arcs change color to subcolor */
			cd->sub = NOSUB;
			scd = &cm->cd[sco];
			FUNC2(scd->nschrs > 0 || scd->nuchrs > 0);
			FUNC2(scd->sub == sco);
			scd->sub = NOSUB;
			while ((a = cd->arcs) != NULL)
			{
				FUNC2(a->co == co);
				FUNC6(cm, a);
				a->co = sco;
				FUNC3(cm, a);
			}
			FUNC4(cm, co);
		}
		else
		{
			/* parent's arcs must gain parallel subcolor arcs */
			cd->sub = NOSUB;
			scd = &cm->cd[sco];
			FUNC2(scd->nschrs > 0 || scd->nuchrs > 0);
			FUNC2(scd->sub == sco);
			scd->sub = NOSUB;
			for (a = cd->arcs; a != NULL; a = a->colorchain)
			{
				FUNC2(a->co == co);
				FUNC5(nfa, a->type, sco, a->from, a->to);
			}
		}
	}
}