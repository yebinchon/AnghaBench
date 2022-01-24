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
struct vars {int /*<<< orphan*/  cm; } ;
struct state {struct state* tmp; struct arc* ins; struct arc* outs; } ;
struct nfa {scalar_t__* bos; struct state* pre; } ;
struct arc {scalar_t__ type; scalar_t__ co; struct state* from; struct arc* inchain; struct state* to; struct arc* outchain; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLORLESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ PLAIN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfa*,struct state*,struct state*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfa*,struct arc*,struct state*,struct state*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfa*,struct arc*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfa*,scalar_t__,scalar_t__,struct state*,struct state*) ; 
 struct state* FUNC6 (struct nfa*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfa*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct state*,struct state*) ; 

__attribute__((used)) static void
FUNC8(struct vars *v,
		   struct nfa *nfa)
{
	struct arc *a;
	struct arc *b;
	struct state *pre = nfa->pre;
	struct state *s;
	struct state *s2;
	struct state *slist;

	/* no loops are needed if it's anchored */
	for (a = pre->outs; a != NULL; a = a->outchain)
	{
		FUNC1(a->type == PLAIN);
		if (a->co != nfa->bos[0] && a->co != nfa->bos[1])
			break;
	}
	if (a != NULL)
	{
		/* add implicit .* in front */
		FUNC7(nfa, v->cm, PLAIN, COLORLESS, pre, pre);

		/* and ^* and \A* too -- not always necessary, but harmless */
		FUNC5(nfa, PLAIN, nfa->bos[0], pre, pre);
		FUNC5(nfa, PLAIN, nfa->bos[1], pre, pre);
	}

	/*
	 * Now here's the subtle part.  Because many REs have no lookback
	 * constraints, often knowing when you were in the pre state tells you
	 * little; it's the next state(s) that are informative.  But some of them
	 * may have other inarcs, i.e. it may be possible to make actual progress
	 * and then return to one of them.  We must de-optimize such cases,
	 * splitting each such state into progress and no-progress states.
	 */

	/* first, make a list of the states reachable from pre and elsewhere */
	slist = NULL;
	for (a = pre->outs; a != NULL; a = a->outchain)
	{
		s = a->to;
		for (b = s->ins; b != NULL; b = b->inchain)
		{
			if (b->from != pre)
				break;
		}

		/*
		 * We want to mark states as being in the list already by having non
		 * NULL tmp fields, but we can't just store the old slist value in tmp
		 * because that doesn't work for the first such state.  Instead, the
		 * first list entry gets its own address in tmp.
		 */
		if (b != NULL && s->tmp == NULL)
		{
			s->tmp = (slist != NULL) ? slist : s;
			slist = s;
		}
	}

	/* do the splits */
	for (s = slist; s != NULL; s = s2)
	{
		s2 = FUNC6(nfa);
		FUNC0();
		FUNC2(nfa, s, s2);
		FUNC0();
		for (a = s->ins; a != NULL; a = b)
		{
			b = a->inchain;
			if (a->from != pre)
			{
				FUNC3(nfa, a, a->from, s2);
				FUNC4(nfa, a);
			}
		}
		s2 = (s->tmp != s) ? s->tmp : NULL;
		s->tmp = NULL;			/* clean up while we're at it */
	}
}