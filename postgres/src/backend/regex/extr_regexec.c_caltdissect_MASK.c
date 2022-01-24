#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vars {int dummy; } ;
struct subre {char op; struct subre* right; TYPE_2__* left; int /*<<< orphan*/  id; } ;
struct dfa {int dummy; } ;
typedef  int /*<<< orphan*/  chr ;
struct TYPE_4__ {scalar_t__ nstates; } ;
struct TYPE_5__ {TYPE_1__ cnfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int REG_NOMATCH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct vars*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dfa* FUNC4 (struct vars*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (struct vars*,struct dfa*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int						/* regexec return code */
FUNC6(struct vars *v,
			struct subre *t,
			chr *begin,			/* beginning of relevant substring */
			chr *end)			/* end of same */
{
	struct dfa *d;
	int			er;

	/* We loop, rather than tail-recurse, to handle a chain of alternatives */
	while (t != NULL)
	{
		FUNC2(t->op == '|');
		FUNC2(t->left != NULL && t->left->cnfa.nstates > 0);

		FUNC0(("calt n%d\n", t->id));

		d = FUNC4(v, t->left);
		FUNC1();
		if (FUNC5(v, d, begin, end, (int *) NULL) == end)
		{
			FUNC0(("calt matched\n"));
			er = FUNC3(v, t->left, begin, end);
			if (er != REG_NOMATCH)
				return er;
		}
		FUNC1();

		t = t->right;
	}

	return REG_NOMATCH;
}