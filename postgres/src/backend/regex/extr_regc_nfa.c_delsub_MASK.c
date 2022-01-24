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
struct state {scalar_t__ nouts; scalar_t__ nins; scalar_t__ no; struct state* tmp; } ;
struct nfa {int dummy; } ;

/* Variables and functions */
 scalar_t__ FREESTATE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfa*,struct state*,struct state*) ; 

__attribute__((used)) static void
FUNC3(struct nfa *nfa,
	   struct state *lp,		/* the sub-NFA goes from here... */
	   struct state *rp)		/* ...to here, *not* inclusive */
{
	FUNC1(lp != rp);

	rp->tmp = rp;				/* mark end */

	FUNC2(nfa, lp, lp);
	if (FUNC0())
		return;					/* asserts might not hold after failure */
	FUNC1(lp->nouts == 0 && rp->nins == 0);	/* did the job */
	FUNC1(lp->no != FREESTATE && rp->no != FREESTATE); /* no more */

	rp->tmp = NULL;				/* unmark end */
	lp->tmp = NULL;				/* and begin, marked by deltraverse */
}