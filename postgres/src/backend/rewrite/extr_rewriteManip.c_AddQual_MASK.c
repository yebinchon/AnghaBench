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
struct TYPE_5__ {scalar_t__ commandType; int /*<<< orphan*/  hasSubLinks; TYPE_1__* jointree; int /*<<< orphan*/ * setOperations; scalar_t__ utilityStmt; } ;
struct TYPE_4__ {int /*<<< orphan*/  quals; } ;
typedef  TYPE_2__ Query ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CMD_UTILITY ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NotifyStmt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC9(Query *parsetree, Node *qual)
{
	Node	   *copy;

	if (qual == NULL)
		return;

	if (parsetree->commandType == CMD_UTILITY)
	{
		/*
		 * There's noplace to put the qual on a utility statement.
		 *
		 * If it's a NOTIFY, silently ignore the qual; this means that the
		 * NOTIFY will execute, whether or not there are any qualifying rows.
		 * While clearly wrong, this is much more useful than refusing to
		 * execute the rule at all, and extra NOTIFY events are harmless for
		 * typical uses of NOTIFY.
		 *
		 * If it isn't a NOTIFY, error out, since unconditional execution of
		 * other utility stmts is unlikely to be wanted.  (This case is not
		 * currently allowed anyway, but keep the test for safety.)
		 */
		if (parsetree->utilityStmt && FUNC1(parsetree->utilityStmt, NotifyStmt))
			return;
		else
			FUNC5(ERROR,
					(FUNC6(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC7("conditional utility statements are not implemented")));
	}

	if (parsetree->setOperations != NULL)
	{
		/*
		 * There's noplace to put the qual on a setop statement, either. (This
		 * could be fixed, but right now the planner simply ignores any qual
		 * condition on a setop query.)
		 */
		FUNC5(ERROR,
				(FUNC6(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC7("conditional UNION/INTERSECT/EXCEPT statements are not implemented")));
	}

	/* INTERSECT wants the original, but we need to copy - Jan */
	copy = FUNC4(qual);

	parsetree->jointree->quals = FUNC8(parsetree->jointree->quals,
											   copy);

	/*
	 * We had better not have stuck an aggregate into the WHERE clause.
	 */
	FUNC0(!FUNC3(copy, 0));

	/*
	 * Make sure query is marked correctly if added qual has sublinks. Need
	 * not search qual when query is already marked.
	 */
	if (!parsetree->hasSubLinks)
		parsetree->hasSubLinks = FUNC2(copy);
}