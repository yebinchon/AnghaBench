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
struct vars {int /*<<< orphan*/  nfa; } ;
struct subre {int dummy; } ;
struct state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct state*,struct state*) ; 
 int EOS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_UUNSPEC ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct state*,struct state*) ; 
 struct state* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vars*,int,int,struct state*,struct state*,struct subre*) ; 
 struct subre* FUNC8 (struct vars*,char,int /*<<< orphan*/ ,struct state*,struct state*) ; 

__attribute__((used)) static struct subre *
FUNC9(struct vars *v,
			int stopper,		/* EOS or ')' */
			int type,			/* LACON (lookaround subRE) or PLAIN */
			struct state *left, /* leftmost state */
			struct state *right,	/* rightmost state */
			int partial)		/* is this only part of a branch? */
{
	struct state *lp;			/* left end of current construct */
	int			seencontent;	/* is there anything in this branch yet? */
	struct subre *t;

	lp = left;
	seencontent = 0;
	t = FUNC8(v, '=', 0, left, right);	/* op '=' is tentative */
	FUNC1();
	while (!FUNC3('|') && !FUNC3(stopper) && !FUNC3(EOS))
	{
		if (seencontent)
		{						/* implicit concat operator */
			lp = FUNC6(v->nfa);
			FUNC1();
			FUNC5(v->nfa, right, lp);
		}
		seencontent = 1;

		/* NB, recursion in parseqatom() may swallow rest of branch */
		FUNC7(v, stopper, type, lp, right, t);
		FUNC1();
	}

	if (!seencontent)
	{							/* empty branch */
		if (!partial)
			FUNC2(REG_UUNSPEC);
		FUNC4(lp == left);
		FUNC0(left, right);
	}

	return t;
}