#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ expr; } ;
typedef  TYPE_1__ TargetEntry ;
struct TYPE_7__ {int /*<<< orphan*/  p_hasWindowFuncs; int /*<<< orphan*/  p_hasAggs; } ;
typedef  TYPE_2__ ParseState ;
typedef  int ParseExprKind ;
typedef  int /*<<< orphan*/  Node ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_GROUPING_ERROR ; 
 int /*<<< orphan*/  ERRCODE_WINDOWING_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
#define  EXPR_KIND_DISTINCT_ON 130 
#define  EXPR_KIND_GROUP_BY 129 
#define  EXPR_KIND_ORDER_BY 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(ParseState *pstate, TargetEntry *tle,
						  ParseExprKind exprKind)
{
	switch (exprKind)
	{
		case EXPR_KIND_GROUP_BY:
			/* reject aggregates and window functions */
			if (pstate->p_hasAggs &&
				FUNC1((Node *) tle->expr, 0))
				FUNC4(ERROR,
						(FUNC5(ERRCODE_GROUPING_ERROR),
				/* translator: %s is name of a SQL construct, eg GROUP BY */
						 FUNC6("aggregate functions are not allowed in %s",
								FUNC0(exprKind)),
						 FUNC9(pstate,
											FUNC7((Node *) tle->expr, 0))));
			if (pstate->p_hasWindowFuncs &&
				FUNC2((Node *) tle->expr))
				FUNC4(ERROR,
						(FUNC5(ERRCODE_WINDOWING_ERROR),
				/* translator: %s is name of a SQL construct, eg GROUP BY */
						 FUNC6("window functions are not allowed in %s",
								FUNC0(exprKind)),
						 FUNC9(pstate,
											FUNC8((Node *) tle->expr))));
			break;
		case EXPR_KIND_ORDER_BY:
			/* no extra checks needed */
			break;
		case EXPR_KIND_DISTINCT_ON:
			/* no extra checks needed */
			break;
		default:
			FUNC3(ERROR, "unexpected exprKind in checkTargetlistEntrySQL92");
			break;
	}
}