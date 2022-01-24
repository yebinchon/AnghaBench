#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  p_rtable; } ;
typedef  TYPE_1__ ParseState ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_COLUMN_REFERENCE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  EXPR_KIND_CHECK_CONSTRAINT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Node *
FUNC7(ParseState *pstate,
			   Node *raw_constraint,
			   char *relname)
{
	Node	   *expr;

	/*
	 * Transform raw parsetree to executable expression.
	 */
	expr = FUNC6(pstate, raw_constraint, EXPR_KIND_CHECK_CONSTRAINT);

	/*
	 * Make sure it yields a boolean result.
	 */
	expr = FUNC1(pstate, expr, "CHECK");

	/*
	 * Take care of collations.
	 */
	FUNC0(pstate, expr);

	/*
	 * Make sure no outside relations are referred to (this is probably dead
	 * code now that add_missing_from is history).
	 */
	if (FUNC5(pstate->p_rtable) != 1)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INVALID_COLUMN_REFERENCE),
				 FUNC4("only table \"%s\" can be referenced in check constraint",
						relname)));

	return expr;
}