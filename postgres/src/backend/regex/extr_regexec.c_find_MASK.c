#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vars {int nmatch; int err; TYPE_3__* g; TYPE_4__* pmatch; int /*<<< orphan*/ * stop; TYPE_2__* details; int /*<<< orphan*/  dfa1; int /*<<< orphan*/ * search_start; int /*<<< orphan*/ * start; } ;
struct dfa {int dummy; } ;
struct colormap {int dummy; } ;
struct cnfa {int dummy; } ;
typedef  int /*<<< orphan*/  chr ;
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {void* rm_eo; void* rm_so; } ;
struct TYPE_8__ {int cflags; TYPE_5__* tree; struct cnfa search; } ;
struct TYPE_6__ {void* rm_eo; void* rm_so; } ;
struct TYPE_7__ {TYPE_1__ rm_extend; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int REG_EXPECT ; 
 int REG_NOMATCH ; 
 int REG_OKAY ; 
 int SHORTER ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct vars*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct dfa*) ; 
 int /*<<< orphan*/ * FUNC8 (struct vars*,struct dfa*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 struct dfa* FUNC9 (struct vars*,struct cnfa*,struct colormap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (struct vars*,struct dfa*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int) ; 

__attribute__((used)) static int
FUNC12(struct vars *v,
	 struct cnfa *cnfa,
	 struct colormap *cm)
{
	struct dfa *s;
	struct dfa *d;
	chr		   *begin;
	chr		   *end = NULL;
	chr		   *cold;
	chr		   *open;			/* open and close of range of possible starts */
	chr		   *close;
	int			hitend;
	int			shorter = (v->g->tree->flags & SHORTER) ? 1 : 0;

	/* first, a shot with the search RE */
	s = FUNC9(v, &v->g->search, cm, &v->dfa1);
	FUNC5(!(FUNC0() && s != NULL));
	FUNC3();
	FUNC2(("\nsearch at %ld\n", FUNC1(v->start)));
	cold = NULL;
	close = FUNC10(v, s, v->search_start, v->search_start, v->stop,
					 &cold, (int *) NULL);
	FUNC7(s);
	FUNC3();
	if (v->g->cflags & REG_EXPECT)
	{
		FUNC5(v->details != NULL);
		if (cold != NULL)
			v->details->rm_extend.rm_so = FUNC4(cold);
		else
			v->details->rm_extend.rm_so = FUNC4(v->stop);
		v->details->rm_extend.rm_eo = FUNC4(v->stop); /* unknown */
	}
	if (close == NULL)			/* not found */
		return REG_NOMATCH;
	if (v->nmatch == 0)			/* found, don't need exact location */
		return REG_OKAY;

	/* find starting point and match */
	FUNC5(cold != NULL);
	open = cold;
	cold = NULL;
	FUNC2(("between %ld and %ld\n", FUNC1(open), FUNC1(close)));
	d = FUNC9(v, cnfa, cm, &v->dfa1);
	FUNC5(!(FUNC0() && d != NULL));
	FUNC3();
	for (begin = open; begin <= close; begin++)
	{
		FUNC2(("\nfind trying at %ld\n", FUNC1(begin)));
		if (shorter)
			end = FUNC10(v, d, begin, begin, v->stop,
						   (chr **) NULL, &hitend);
		else
			end = FUNC8(v, d, begin, v->stop, &hitend);
		if (FUNC0())
		{
			FUNC7(d);
			return v->err;
		}
		if (hitend && cold == NULL)
			cold = begin;
		if (end != NULL)
			break;				/* NOTE BREAK OUT */
	}
	FUNC5(end != NULL);		/* search RE succeeded so loop should */
	FUNC7(d);

	/* and pin down details */
	FUNC5(v->nmatch > 0);
	v->pmatch[0].rm_so = FUNC4(begin);
	v->pmatch[0].rm_eo = FUNC4(end);
	if (v->g->cflags & REG_EXPECT)
	{
		if (cold != NULL)
			v->details->rm_extend.rm_so = FUNC4(cold);
		else
			v->details->rm_extend.rm_so = FUNC4(v->stop);
		v->details->rm_extend.rm_eo = FUNC4(v->stop); /* unknown */
	}
	if (v->nmatch == 1)			/* no need for submatches */
		return REG_OKAY;

	/* find submatches */
	FUNC11(v->pmatch, v->nmatch);
	return FUNC6(v, v->g->tree, begin, end);
}