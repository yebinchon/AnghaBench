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
struct state {scalar_t__ nouts; scalar_t__ nins; scalar_t__ no; struct state* tmp; struct arc* outs; } ;
struct nfa {TYPE_1__* v; } ;
struct arc {struct state* to; } ;
struct TYPE_2__ {int /*<<< orphan*/  re; } ;

/* Variables and functions */
 scalar_t__ FREESTATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  REG_ETOOBIG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfa*,struct arc*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfa*,struct state*) ; 

__attribute__((used)) static void
FUNC6(struct nfa *nfa,
			struct state *leftend,
			struct state *s)
{
	struct arc *a;
	struct state *to;

	/* Since this is recursive, it could be driven to stack overflow */
	if (FUNC2(nfa->v->re))
	{
		FUNC0(REG_ETOOBIG);
		return;
	}

	if (s->nouts == 0)
		return;					/* nothing to do */
	if (s->tmp != NULL)
		return;					/* already in progress */

	s->tmp = s;					/* mark as in progress */

	while ((a = s->outs) != NULL)
	{
		to = a->to;
		FUNC6(nfa, leftend, to);
		if (FUNC1())
			return;				/* asserts might not hold after failure */
		FUNC3(to->nouts == 0 || to->tmp != NULL);
		FUNC4(nfa, a);
		if (to->nins == 0 && to->tmp == NULL)
		{
			FUNC3(to->nouts == 0);
			FUNC5(nfa, to);
		}
	}

	FUNC3(s->no != FREESTATE); /* we're still here */
	FUNC3(s == leftend || s->nins != 0);	/* and still reachable */
	FUNC3(s->nouts == 0);		/* but have no outarcs */

	s->tmp = NULL;				/* we're done here */
}