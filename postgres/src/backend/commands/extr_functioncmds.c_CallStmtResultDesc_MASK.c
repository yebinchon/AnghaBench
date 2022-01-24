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
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_5__ {TYPE_1__* funcexpr; } ;
struct TYPE_4__ {int /*<<< orphan*/  funcid; } ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__ FuncExpr ;
typedef  TYPE_2__ CallStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

TupleDesc
FUNC6(CallStmt *stmt)
{
	FuncExpr   *fexpr;
	HeapTuple	tuple;
	TupleDesc	tupdesc;

	fexpr = stmt->funcexpr;

	tuple = FUNC3(PROCOID, FUNC1(fexpr->funcid));
	if (!FUNC0(tuple))
		FUNC5(ERROR, "cache lookup failed for procedure %u", fexpr->funcid);

	tupdesc = FUNC4(tuple);

	FUNC2(tuple);

	return tupdesc;
}