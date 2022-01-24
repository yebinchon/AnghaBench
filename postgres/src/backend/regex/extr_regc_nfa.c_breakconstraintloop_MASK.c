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
struct state {scalar_t__ nouts; struct arc* outs; struct state* tmp; struct state* next; } ;
struct nfa {int /*<<< orphan*/  nstates; struct state* states; } ;
struct arc {struct state* to; struct arc* outchain; struct state* from; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfa*,struct state*,struct state*,struct state*,struct arc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nfa*,struct arc*,struct state*,struct state*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfa*,struct arc*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfa*,struct state*) ; 
 scalar_t__ FUNC6 (struct arc*) ; 
 struct state* FUNC7 (struct nfa*) ; 

__attribute__((used)) static void
FUNC8(struct nfa *nfa, struct state *sinitial)
{
	struct state *s;
	struct state *shead;
	struct state *stail;
	struct state *sclone;
	struct state *nexts;
	struct arc *refarc;
	struct arc *a;
	struct arc *nexta;

	/*
	 * Start by identifying which loop step we want to break at.
	 * Preferentially this is one with only one constraint arc.  (XXX are
	 * there any other secondary heuristics we want to use here?)  Set refarc
	 * to point to the selected lone constraint arc, if there is one.
	 */
	refarc = NULL;
	s = sinitial;
	do
	{
		nexts = s->tmp;
		FUNC1(nexts != s);		/* should not see any one-element loops */
		if (refarc == NULL)
		{
			int			narcs = 0;

			for (a = s->outs; a != NULL; a = a->outchain)
			{
				if (a->to == nexts && FUNC6(a))
				{
					refarc = a;
					narcs++;
				}
			}
			FUNC1(narcs > 0);
			if (narcs > 1)
				refarc = NULL;	/* multiple constraint arcs here, no good */
		}
		s = nexts;
	} while (s != sinitial);

	if (refarc)
	{
		/* break at the refarc */
		shead = refarc->from;
		stail = refarc->to;
		FUNC1(stail == shead->tmp);
	}
	else
	{
		/* for lack of a better idea, break after sinitial */
		shead = sinitial;
		stail = sinitial->tmp;
	}

	/*
	 * Reset the tmp fields so that we can use them for local storage in
	 * clonesuccessorstates.  (findconstraintloop won't mind, since it's just
	 * going to abandon its search anyway.)
	 */
	for (s = nfa->states; s != NULL; s = s->next)
		s->tmp = NULL;

	/*
	 * Recursively build clone state(s) as needed.
	 */
	sclone = FUNC7(nfa);
	if (sclone == NULL)
	{
		FUNC1(FUNC0());
		return;
	}

	FUNC2(nfa, stail, sclone, shead, refarc,
						 NULL, NULL, nfa->nstates);

	if (FUNC0())
		return;

	/*
	 * It's possible that sclone has no outarcs at all, in which case it's
	 * useless.  (We don't try extremely hard to get rid of useless states
	 * here, but this is an easy and fairly common case.)
	 */
	if (sclone->nouts == 0)
	{
		FUNC5(nfa, sclone);
		sclone = NULL;
	}

	/*
	 * Move shead's constraint-loop arcs to point to sclone, or just drop them
	 * if we discovered we don't need sclone.
	 */
	for (a = shead->outs; a != NULL; a = nexta)
	{
		nexta = a->outchain;
		if (a->to == stail && FUNC6(a))
		{
			if (sclone)
				FUNC3(nfa, a, shead, sclone);
			FUNC4(nfa, a);
			if (FUNC0())
				break;
		}
	}
}