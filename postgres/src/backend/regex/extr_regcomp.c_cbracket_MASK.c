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
struct vars {int cflags; int /*<<< orphan*/  nfa; int /*<<< orphan*/  cm; int /*<<< orphan*/  nlcolor; } ;
struct state {scalar_t__ nouts; scalar_t__ nins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PLAIN ; 
 int REG_NLSTOP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct vars*,struct state*,struct state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct state*,struct state*,struct state*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct state*,struct state*) ; 
 struct state* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct vars *v,
		 struct state *lp,
		 struct state *rp)
{
	struct state *left = FUNC7(v->nfa);
	struct state *right = FUNC7(v->nfa);

	FUNC0();
	FUNC2(v, left, right);
	if (v->cflags & REG_NLSTOP)
		FUNC6(v->nfa, PLAIN, v->nlcolor, left, right);
	FUNC0();

	FUNC1(lp->nouts == 0);		/* all outarcs will be ours */

	/*
	 * Easy part of complementing, and all there is to do since the MCCE code
	 * was removed.
	 */
	FUNC3(v->nfa, v->cm, PLAIN, left, lp, rp);
	FUNC0();
	FUNC4(v->nfa, left);
	FUNC1(right->nins == 0);
	FUNC5(v->nfa, right);
}