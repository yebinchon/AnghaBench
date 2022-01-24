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
struct cvec {scalar_t__* chrs; int nchrs; scalar_t__* ranges; int nranges; size_t cclasscode; } ;
struct colormap {int* classbits; int hiarraycols; int hiarrayrows; scalar_t__* hicolormap; } ;
typedef  scalar_t__ color ;
typedef  scalar_t__ chr ;

/* Variables and functions */
 scalar_t__ COLORLESS ; 
 scalar_t__ MAX_SIMPLE_CHR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PLAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct state*,struct state*) ; 
 int /*<<< orphan*/  FUNC2 (struct colormap*) ; 
 scalar_t__ FUNC3 (struct colormap*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct colormap*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct vars*,scalar_t__,struct state*,struct state*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct vars*,scalar_t__,scalar_t__,struct state*,struct state*,scalar_t__*) ; 

__attribute__((used)) static void
FUNC7(struct vars *v,
			 struct cvec *cv,
			 struct state *lp,
			 struct state *rp)
{
	struct colormap *cm = v->cm;
	color		lastsubcolor = COLORLESS;
	chr			ch,
				from,
				to;
	const chr  *p;
	int			i;

	/* ordinary characters */
	for (p = cv->chrs, i = cv->nchrs; i > 0; p++, i--)
	{
		ch = *p;
		FUNC5(v, ch, lp, rp, &lastsubcolor);
		FUNC0();
	}

	/* and the ranges */
	for (p = cv->ranges, i = cv->nranges; i > 0; p += 2, i--)
	{
		from = *p;
		to = *(p + 1);
		if (from <= MAX_SIMPLE_CHR)
		{
			/* deal with simple chars one at a time */
			chr			lim = (to <= MAX_SIMPLE_CHR) ? to : MAX_SIMPLE_CHR;

			while (from <= lim)
			{
				color		sco = FUNC3(cm, from);

				FUNC0();
				if (sco != lastsubcolor)
				{
					FUNC1(v->nfa, PLAIN, sco, lp, rp);
					FUNC0();
					lastsubcolor = sco;
				}
				from++;
			}
		}
		/* deal with any part of the range that's above MAX_SIMPLE_CHR */
		if (from < to)
			FUNC6(v, from, to, lp, rp, &lastsubcolor);
		else if (from == to)
			FUNC5(v, from, lp, rp, &lastsubcolor);
		FUNC0();
	}

	/* and deal with cclass if any */
	if (cv->cclasscode >= 0)
	{
		int			classbit;
		color	   *pco;
		int			r,
					c;

		/* Enlarge array if we don't have a column bit assignment for cclass */
		if (cm->classbits[cv->cclasscode] == 0)
		{
			cm->classbits[cv->cclasscode] = cm->hiarraycols;
			FUNC2(cm);
			FUNC0();
		}
		/* Apply subcolorhi() and make arc for each entry in relevant cols */
		classbit = cm->classbits[cv->cclasscode];
		pco = cm->hicolormap;
		for (r = 0; r < cm->hiarrayrows; r++)
		{
			for (c = 0; c < cm->hiarraycols; c++)
			{
				if (c & classbit)
				{
					color		sco = FUNC4(cm, pco);

					FUNC0();
					/* add the arc if needed */
					if (sco != lastsubcolor)
					{
						FUNC1(v->nfa, PLAIN, sco, lp, rp);
						FUNC0();
						lastsubcolor = sco;
					}
				}
				pco++;
			}
		}
	}
}