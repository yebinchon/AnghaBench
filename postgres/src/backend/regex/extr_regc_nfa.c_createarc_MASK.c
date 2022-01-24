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
struct state {int /*<<< orphan*/  nins; int /*<<< orphan*/  nouts; struct arc* outs; struct arc* ins; } ;
struct nfa {int /*<<< orphan*/  cm; int /*<<< orphan*/ * parent; } ;
struct arc {int type; struct arc* outchainRev; struct arc* outchain; struct arc* inchainRev; struct arc* inchain; struct state* from; struct state* to; int /*<<< orphan*/  co; } ;
typedef  int /*<<< orphan*/  color ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct arc*) ; 
 scalar_t__ FUNC1 () ; 
 struct arc* FUNC2 (struct nfa*,struct state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct arc*) ; 

__attribute__((used)) static void
FUNC5(struct nfa *nfa,
		  int t,
		  color co,
		  struct state *from,
		  struct state *to)
{
	struct arc *a;

	/* the arc is physically allocated within its from-state */
	a = FUNC2(nfa, from);
	if (FUNC1())
		return;
	FUNC3(a != NULL);

	a->type = t;
	a->co = co;
	a->to = to;
	a->from = from;

	/*
	 * Put the new arc on the beginning, not the end, of the chains; it's
	 * simpler here, and freearc() is the same cost either way.  See also the
	 * logic in moveins() and its cohorts, as well as fixempties().
	 */
	a->inchain = to->ins;
	a->inchainRev = NULL;
	if (to->ins)
		to->ins->inchainRev = a;
	to->ins = a;
	a->outchain = from->outs;
	a->outchainRev = NULL;
	if (from->outs)
		from->outs->outchainRev = a;
	from->outs = a;

	from->nouts++;
	to->nins++;

	if (FUNC0(a) && nfa->parent == NULL)
		FUNC4(nfa->cm, a);
}