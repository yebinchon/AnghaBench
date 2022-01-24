#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TargetEntry ;
struct TYPE_4__ {int /*<<< orphan*/  p_next_resno; } ;
typedef  TYPE_1__ ParseState ;
typedef  scalar_t__ ParseExprKind ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  AttrNumber ;

/* Variables and functions */
 scalar_t__ EXPR_KIND_UPDATE_SOURCE ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SetToDefault ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 

TargetEntry *
FUNC4(ParseState *pstate,
					 Node *node,
					 Node *expr,
					 ParseExprKind exprKind,
					 char *colname,
					 bool resjunk)
{
	/* Transform the node if caller didn't do it already */
	if (expr == NULL)
	{
		/*
		 * If it's a SetToDefault node and we should allow that, pass it
		 * through unmodified.  (transformExpr will throw the appropriate
		 * error if we're disallowing it.)
		 */
		if (exprKind == EXPR_KIND_UPDATE_SOURCE && FUNC1(node, SetToDefault))
			expr = node;
		else
			expr = FUNC3(pstate, node, exprKind);
	}

	if (colname == NULL && !resjunk)
	{
		/*
		 * Generate a suitable column name for a column without any explicit
		 * 'AS ColumnName' clause.
		 */
		colname = FUNC0(node);
	}

	return FUNC2((Expr *) expr,
						   (AttrNumber) pstate->p_next_resno++,
						   colname,
						   resjunk);
}