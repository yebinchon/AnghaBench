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
struct state {struct arc* outs; int /*<<< orphan*/ * tmp; } ;
struct nfa {TYPE_1__* v; } ;
struct arc {struct state* to; struct arc* outchain; } ;
struct TYPE_2__ {int /*<<< orphan*/  re; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_ETOOBIG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct nfa *nfa,
			  struct state *s)
{
	struct arc *a;

	/* Since this is recursive, it could be driven to stack overflow */
	if (FUNC1(nfa->v->re))
	{
		FUNC0(REG_ETOOBIG);
		return;
	}

	if (s->tmp == NULL)
		return;
	s->tmp = NULL;

	for (a = s->outs; a != NULL; a = a->outchain)
		FUNC2(nfa, a->to);
}