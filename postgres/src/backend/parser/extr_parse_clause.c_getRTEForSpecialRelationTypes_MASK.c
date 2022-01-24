#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  relname; scalar_t__ schemaname; } ;
typedef  TYPE_1__ RangeVar ;
typedef  int /*<<< orphan*/  RangeTblEntry ;
typedef  int /*<<< orphan*/  ParseState ;
typedef  int /*<<< orphan*/  Index ;
typedef  int /*<<< orphan*/  CommonTableExpr ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RangeTblEntry *
FUNC4(ParseState *pstate, RangeVar *rv)
{
	CommonTableExpr *cte;
	Index		levelsup;
	RangeTblEntry *rte;

	/*
	 * if it is a qualified name, it can't be a CTE or tuplestore reference
	 */
	if (rv->schemaname)
		return NULL;

	cte = FUNC2(pstate, rv->relname, &levelsup);
	if (cte)
		rte = FUNC0(pstate, cte, levelsup, rv, true);
	else if (FUNC3(pstate, rv->relname))
		rte = FUNC1(pstate, rv, true);
	else
		rte = NULL;

	return rte;
}