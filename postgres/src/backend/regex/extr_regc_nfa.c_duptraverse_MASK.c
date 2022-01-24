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
struct state {struct state* tmp; struct arc* outs; } ;
struct nfa {TYPE_1__* v; } ;
struct arc {struct state* to; struct arc* outchain; } ;
struct TYPE_2__ {int /*<<< orphan*/  re; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  REG_ETOOBIG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct nfa*,struct arc*,struct state*,struct state*) ; 
 struct state* FUNC5 (struct nfa*) ; 

__attribute__((used)) static void
FUNC6(struct nfa *nfa,
			struct state *s,
			struct state *stmp) /* s's duplicate, or NULL */
{
	struct arc *a;

	/* Since this is recursive, it could be driven to stack overflow */
	if (FUNC2(nfa->v->re))
	{
		FUNC0(REG_ETOOBIG);
		return;
	}

	if (s->tmp != NULL)
		return;					/* already done */

	s->tmp = (stmp == NULL) ? FUNC5(nfa) : stmp;
	if (s->tmp == NULL)
	{
		FUNC3(FUNC1());
		return;
	}

	for (a = s->outs; a != NULL && !FUNC1(); a = a->outchain)
	{
		FUNC6(nfa, a->to, (struct state *) NULL);
		if (FUNC1())
			break;
		FUNC3(a->to->tmp != NULL);
		FUNC4(nfa, a, s->tmp, a->to->tmp);
	}
}