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
struct vars {int /*<<< orphan*/  re; } ;
struct subre {int op; int flags; struct subre* left; int /*<<< orphan*/  subno; int /*<<< orphan*/ * right; } ;
typedef  int /*<<< orphan*/  chr ;

/* Variables and functions */
 int BACKR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int REG_ASSERT ; 
 int REG_CANCEL ; 
 int REG_ETOOBIG ; 
 int REG_NOMATCH ; 
 int REG_OKAY ; 
 int SHORTER ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct vars*,struct subre*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct vars*,struct subre*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct vars*,struct subre*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct vars*,struct subre*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct vars*,struct subre*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct vars*,struct subre*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct vars*,struct subre*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int						/* regexec return code */
FUNC12(struct vars *v,
		 struct subre *t,
		 chr *begin,			/* beginning of relevant substring */
		 chr *end)				/* end of same */
{
	int			er;

	FUNC4(t != NULL);
	FUNC2(("cdissect %ld-%ld %c\n", FUNC1(begin), FUNC1(end), t->op));

	/* handy place to check for operation cancel */
	if (FUNC0(v->re))
		return REG_CANCEL;
	/* ... and stack overrun */
	if (FUNC3(v->re))
		return REG_ETOOBIG;

	switch (t->op)
	{
		case '=':				/* terminal node */
			FUNC4(t->left == NULL && t->right == NULL);
			er = REG_OKAY;		/* no action, parent did the work */
			break;
		case 'b':				/* back reference */
			FUNC4(t->left == NULL && t->right == NULL);
			er = FUNC6(v, t, begin, end);
			break;
		case '.':				/* concatenation */
			FUNC4(t->left != NULL && t->right != NULL);
			if (t->left->flags & SHORTER)	/* reverse scan */
				er = FUNC9(v, t, begin, end);
			else
				er = FUNC7(v, t, begin, end);
			break;
		case '|':				/* alternation */
			FUNC4(t->left != NULL);
			er = FUNC5(v, t, begin, end);
			break;
		case '*':				/* iteration */
			FUNC4(t->left != NULL);
			if (t->left->flags & SHORTER)	/* reverse scan */
				er = FUNC10(v, t, begin, end);
			else
				er = FUNC8(v, t, begin, end);
			break;
		case '(':				/* capturing */
			FUNC4(t->left != NULL && t->right == NULL);
			FUNC4(t->subno > 0);
			er = FUNC12(v, t->left, begin, end);
			if (er == REG_OKAY)
				FUNC11(v, t, begin, end);
			break;
		default:
			er = REG_ASSERT;
			break;
	}

	/*
	 * We should never have a match failure unless backrefs lurk below;
	 * otherwise, either caller failed to check the DFA, or there's some
	 * inconsistency between the DFA and the node's innards.
	 */
	FUNC4(er != REG_NOMATCH || (t->flags & BACKR));

	return er;
}