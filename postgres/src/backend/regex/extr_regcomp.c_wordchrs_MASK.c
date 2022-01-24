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
struct vars {struct state* wordchrs; int /*<<< orphan*/ * savenow; int /*<<< orphan*/  nfa; } ;
struct state {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct vars*,struct state*,struct state*) ; 
 int /*<<< orphan*/  FUNC6 (struct vars*) ; 
 struct state* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct vars *v)
{
	struct state *left;
	struct state *right;

	if (v->wordchrs != NULL)
	{
		FUNC1();					/* for consistency */
		return;
	}

	left = FUNC7(v->nfa);
	right = FUNC7(v->nfa);
	FUNC2();
	/* fine point:	implemented with [::], and lexer will set REG_ULOCALE */
	FUNC6(v);
	FUNC1();
	FUNC4(v->savenow != NULL && FUNC3('['));
	FUNC5(v, left, right);
	FUNC4((v->savenow != NULL && FUNC3(']')) || FUNC0());
	FUNC1();
	FUNC2();
	v->wordchrs = left;
}