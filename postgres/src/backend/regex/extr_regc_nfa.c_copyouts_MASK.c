#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct state {struct arc* outs; int /*<<< orphan*/  nouts; } ;
struct nfa {TYPE_1__* v; } ;
struct arc {int /*<<< orphan*/  to; int /*<<< orphan*/  co; int /*<<< orphan*/  type; struct arc* outchain; } ;
struct TYPE_2__ {int /*<<< orphan*/  re; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int NOTREACHED ; 
 int /*<<< orphan*/  REG_CANCEL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct nfa*,struct arc*,struct state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nfa*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfa*,struct state*) ; 
 int FUNC8 (struct arc**,struct arc**) ; 

__attribute__((used)) static void
FUNC9(struct nfa *nfa,
		 struct state *oldState,
		 struct state *newState)
{
	FUNC4(oldState != newState);

	if (!FUNC0(oldState->nouts, newState->nouts))
	{
		/* With not too many arcs, just do them one at a time */
		struct arc *a;

		for (a = oldState->outs; a != NULL; a = a->outchain)
			FUNC5(nfa, a, newState, a->to);
	}
	else
	{
		/*
		 * With many arcs, use a sort-merge approach.  Note that createarc()
		 * will put new arcs onto the front of newState's chain, so it does
		 * not break our walk through the sorted part of the chain.
		 */
		struct arc *oa;
		struct arc *na;

		/*
		 * Because we bypass newarc() in this code path, we'd better include a
		 * cancel check.
		 */
		if (FUNC1(nfa->v->re))
		{
			FUNC2(REG_CANCEL);
			return;
		}

		FUNC7(nfa, oldState);
		FUNC7(nfa, newState);
		if (FUNC3())
			return;				/* might have failed to sort */
		oa = oldState->outs;
		na = newState->outs;
		while (oa != NULL && na != NULL)
		{
			struct arc *a = oa;

			switch (FUNC8(&oa, &na))
			{
				case -1:
					/* newState does not have anything matching oa */
					oa = oa->outchain;
					FUNC6(nfa, a->type, a->co, newState, a->to);
					break;
				case 0:
					/* match, advance in both lists */
					oa = oa->outchain;
					na = na->outchain;
					break;
				case +1:
					/* advance only na; oa might have a match later */
					na = na->outchain;
					break;
				default:
					FUNC4(NOTREACHED);
			}
		}
		while (oa != NULL)
		{
			/* newState does not have anything matching oa */
			struct arc *a = oa;

			oa = oa->outchain;
			FUNC6(nfa, a->type, a->co, newState, a->to);
		}
	}
}