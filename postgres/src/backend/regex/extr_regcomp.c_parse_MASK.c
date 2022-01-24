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
struct subre {int flags; char op; struct subre* right; struct subre* left; } ;
struct state {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct state*,struct state*) ; 
 int EOS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LONGER ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  REG_EPAREN ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct vars*,struct subre*) ; 
 struct state* FUNC9 (int /*<<< orphan*/ ) ; 
 struct subre* FUNC10 (struct vars*,int,int,struct state*,struct state*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (struct vars*,char,int /*<<< orphan*/ ,struct state*,struct state*) ; 

__attribute__((used)) static struct subre *
FUNC12(struct vars *v,
	  int stopper,				/* EOS or ')' */
	  int type,					/* LACON (lookaround subRE) or PLAIN */
	  struct state *init,		/* initial state */
	  struct state *final)		/* final state */
{
	struct state *left;			/* scaffolding for branch */
	struct state *right;
	struct subre *branches;		/* top level */
	struct subre *branch;		/* current branch */
	struct subre *t;			/* temporary */
	int			firstbranch;	/* is this the first branch? */

	FUNC7(stopper == ')' || stopper == EOS);

	branches = FUNC11(v, '|', LONGER, init, final);
	FUNC4();
	branch = branches;
	firstbranch = 1;
	do
	{							/* a branch */
		if (!firstbranch)
		{
			/* need a place to hang it */
			branch->right = FUNC11(v, '|', LONGER, init, final);
			FUNC4();
			branch = branch->right;
		}
		firstbranch = 0;
		left = FUNC9(v->nfa);
		right = FUNC9(v->nfa);
		FUNC4();
		FUNC1(init, left);
		FUNC1(right, final);
		FUNC4();
		branch->left = FUNC10(v, stopper, type, left, right, 0);
		FUNC4();
		branch->flags |= FUNC6(branch->flags | branch->left->flags);
		if ((branch->flags & ~branches->flags) != 0)	/* new flags */
			for (t = branches; t != branch; t = t->right)
				t->flags |= branch->flags;
	} while (FUNC0('|'));
	FUNC7(FUNC5(stopper) || FUNC5(EOS));

	if (!FUNC5(stopper))
	{
		FUNC7(stopper == ')' && FUNC5(EOS));
		FUNC2(REG_EPAREN);
	}

	/* optimize out simple cases */
	if (branch == branches)
	{							/* only one branch */
		FUNC7(branch->right == NULL);
		t = branch->left;
		branch->left = NULL;
		FUNC8(v, branches);
		branches = t;
	}
	else if (!FUNC3(branches->flags))
	{							/* no interesting innards */
		FUNC8(v, branches->left);
		branches->left = NULL;
		FUNC8(v, branches->right);
		branches->right = NULL;
		branches->op = '=';
	}

	return branches;
}