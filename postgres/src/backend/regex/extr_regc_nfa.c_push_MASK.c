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
struct state {scalar_t__ nouts; int nins; struct state* tmp; struct arc* outs; struct arc* ins; scalar_t__ flag; } ;
struct nfa {int dummy; } ;
struct arc {struct state* to; struct state* from; struct arc* outchain; } ;

/* Variables and functions */
#define  COMPATIBLE 130 
#define  INCOMPATIBLE 129 
 scalar_t__ FUNC0 () ; 
 int NOTREACHED ; 
#define  SATISFIED 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct arc*,struct arc*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfa*,struct state*,struct state*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfa*,struct arc*,struct state*,struct state*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfa*,struct arc*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfa*,struct state*,struct state*) ; 
 struct state* FUNC7 (struct nfa*) ; 

__attribute__((used)) static int
FUNC8(struct nfa *nfa,
	 struct arc *con,
	 struct state **intermediates)
{
	struct state *from = con->from;
	struct state *to = con->to;
	struct arc *a;
	struct arc *nexta;
	struct state *s;

	FUNC1(to != from);			/* should have gotten rid of this earlier */
	if (to->flag)				/* can't push forward beyond end */
		return 0;
	if (to->nouts == 0)
	{							/* dead end */
		FUNC5(nfa, con);
		return 1;
	}

	/*
	 * First, clone to state if necessary to avoid other inarcs.  This may
	 * seem wasteful, but it simplifies the logic, and we'll get rid of the
	 * clone state again at the bottom.
	 */
	if (to->nins > 1)
	{
		s = FUNC7(nfa);
		if (FUNC0())
			return 0;
		FUNC3(nfa, to, s);	/* duplicate outarcs */
		FUNC4(nfa, con, from, s);	/* move constraint arc */
		FUNC5(nfa, con);
		if (FUNC0())
			return 0;
		to = s;
		con = to->ins;
	}
	FUNC1(to->nins == 1);

	/* propagate the constraint into the to state's outarcs */
	for (a = to->outs; a != NULL && !FUNC0(); a = nexta)
	{
		nexta = a->outchain;
		switch (FUNC2(con, a))
		{
			case INCOMPATIBLE:	/* destroy the arc */
				FUNC5(nfa, a);
				break;
			case SATISFIED:		/* no action needed */
				break;
			case COMPATIBLE:	/* swap the two arcs, more or less */
				/* need an intermediate state, but might have one already */
				for (s = *intermediates; s != NULL; s = s->tmp)
				{
					FUNC1(s->nins > 0 && s->nouts > 0);
					if (s->ins->from == from && s->outs->to == a->to)
						break;
				}
				if (s == NULL)
				{
					s = FUNC7(nfa);
					if (FUNC0())
						return 0;
					s->tmp = *intermediates;
					*intermediates = s;
				}
				FUNC4(nfa, con, s, a->to);
				FUNC4(nfa, a, from, s);
				FUNC5(nfa, a);
				break;
			default:
				FUNC1(NOTREACHED);
				break;
		}
	}

	/* remaining outarcs, if any, incorporate the constraint */
	FUNC6(nfa, to, from);
	FUNC5(nfa, con);
	/* to state is now useless, but we leave it to pushfwd() to clean up */
	return 1;
}