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
struct state {scalar_t__ nins; struct arc* ins; } ;
struct nfa {TYPE_1__* v; } ;
struct arc {struct arc* inchain; int /*<<< orphan*/  from; } ;
struct TYPE_2__ {int /*<<< orphan*/  re; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int NOTREACHED ; 
 int /*<<< orphan*/  REG_CANCEL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct arc*,struct state*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfa*,struct arc*,int /*<<< orphan*/ ,struct state*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfa*,struct arc*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfa*,struct state*) ; 
 int FUNC9 (struct arc**,struct arc**) ; 

__attribute__((used)) static void
FUNC10(struct nfa *nfa,
		struct state *oldState,
		struct state *newState)
{
	FUNC4(oldState != newState);

	if (!FUNC0(oldState->nins, newState->nins))
	{
		/* With not too many arcs, just do them one at a time */
		struct arc *a;

		while ((a = oldState->ins) != NULL)
		{
			FUNC6(nfa, a, a->from, newState);
			FUNC7(nfa, a);
		}
	}
	else
	{
		/*
		 * With many arcs, use a sort-merge approach.  Note changearctarget()
		 * will put the arc onto the front of newState's chain, so it does not
		 * break our walk through the sorted part of the chain.
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

		FUNC8(nfa, oldState);
		FUNC8(nfa, newState);
		if (FUNC3())
			return;				/* might have failed to sort */
		oa = oldState->ins;
		na = newState->ins;
		while (oa != NULL && na != NULL)
		{
			struct arc *a = oa;

			switch (FUNC9(&oa, &na))
			{
				case -1:
					/* newState does not have anything matching oa */
					oa = oa->inchain;

					/*
					 * Rather than doing createarc+freearc, we can just unlink
					 * and relink the existing arc struct.
					 */
					FUNC5(a, newState);
					break;
				case 0:
					/* match, advance in both lists */
					oa = oa->inchain;
					na = na->inchain;
					/* ... and drop duplicate arc from oldState */
					FUNC7(nfa, a);
					break;
				case +1:
					/* advance only na; oa might have a match later */
					na = na->inchain;
					break;
				default:
					FUNC4(NOTREACHED);
			}
		}
		while (oa != NULL)
		{
			/* newState does not have anything matching oa */
			struct arc *a = oa;

			oa = oa->inchain;
			FUNC5(a, newState);
		}
	}

	FUNC4(oldState->nins == 0);
	FUNC4(oldState->ins == NULL);
}