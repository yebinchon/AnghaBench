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
struct TYPE_5__ {int /*<<< orphan*/  oprcode; int /*<<< orphan*/  oprcanhash; } ;
struct TYPE_4__ {scalar_t__ opno; int /*<<< orphan*/  args; } ;
typedef  TYPE_1__ OpExpr ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_operator ;

/* Variables and functions */
 scalar_t__ ARRAY_EQ_OP ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEROID ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC11(OpExpr *expr)
{
	Oid			opid = expr->opno;

	/* quick out if not a binary operator */
	if (FUNC9(expr->args) != 2)
		return false;
	if (opid == ARRAY_EQ_OP)
	{
		/* array_eq is strict, but must check input type to ensure hashable */
		/* XXX record_eq will need same treatment when it becomes hashable */
		Node	   *leftarg = FUNC8(expr->args);

		return FUNC10(opid, FUNC6(leftarg));
	}
	else
	{
		/* else must look up the operator properties */
		HeapTuple	tup;
		Form_pg_operator optup;

		tup = FUNC4(OPEROID, FUNC2(opid));
		if (!FUNC1(tup))
			FUNC5(ERROR, "cache lookup failed for operator %u", opid);
		optup = (Form_pg_operator) FUNC0(tup);
		if (!optup->oprcanhash || !FUNC7(optup->oprcode))
		{
			FUNC3(tup);
			return false;
		}
		FUNC3(tup);
		return true;
	}
}