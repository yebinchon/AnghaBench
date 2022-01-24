#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vars {int dummy; } ;
struct subre {char op; TYPE_2__* right; TYPE_2__* left; int /*<<< orphan*/  id; } ;
struct dfa {int dummy; } ;
typedef  int /*<<< orphan*/  chr ;
struct TYPE_5__ {scalar_t__ nstates; } ;
struct TYPE_6__ {int flags; TYPE_1__ cnfa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int REG_ASSERT ; 
 int REG_NOMATCH ; 
 int REG_OKAY ; 
 int SHORTER ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct vars*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dfa* FUNC5 (struct vars*,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (struct vars*,struct dfa*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct vars*,TYPE_2__*) ; 

__attribute__((used)) static int						/* regexec return code */
FUNC8(struct vars *v,
			struct subre *t,
			chr *begin,			/* beginning of relevant substring */
			chr *end)			/* end of same */
{
	struct dfa *d;
	struct dfa *d2;
	chr		   *mid;
	int			er;

	FUNC3(t->op == '.');
	FUNC3(t->left != NULL && t->left->cnfa.nstates > 0);
	FUNC3(t->right != NULL && t->right->cnfa.nstates > 0);
	FUNC3(!(t->left->flags & SHORTER));

	d = FUNC5(v, t->left);
	FUNC2();
	d2 = FUNC5(v, t->right);
	FUNC2();
	FUNC1(("cconcat %d\n", t->id));

	/* pick a tentative midpoint */
	mid = FUNC6(v, d, begin, end, (int *) NULL);
	FUNC2();
	if (mid == NULL)
		return REG_NOMATCH;
	FUNC1(("tentative midpoint %ld\n", FUNC0(mid)));

	/* iterate until satisfaction or failure */
	for (;;)
	{
		/* try this midpoint on for size */
		if (FUNC6(v, d2, mid, end, (int *) NULL) == end)
		{
			er = FUNC4(v, t->left, begin, mid);
			if (er == REG_OKAY)
			{
				er = FUNC4(v, t->right, mid, end);
				if (er == REG_OKAY)
				{
					/* satisfaction */
					FUNC1(("successful\n"));
					return REG_OKAY;
				}
			}
			if (er != REG_NOMATCH)
				return er;
		}
		FUNC2();

		/* that midpoint didn't work, find a new one */
		if (mid == begin)
		{
			/* all possibilities exhausted */
			FUNC1(("%d no midpoint\n", t->id));
			return REG_NOMATCH;
		}
		mid = FUNC6(v, d, begin, mid - 1, (int *) NULL);
		FUNC2();
		if (mid == NULL)
		{
			/* failed to find a new one */
			FUNC1(("%d failed midpoint\n", t->id));
			return REG_NOMATCH;
		}
		FUNC1(("%d: new midpoint %ld\n", t->id, FUNC0(mid)));
		FUNC7(v, t->left);
		FUNC7(v, t->right);
	}

	/* can't get here */
	return REG_ASSERT;
}