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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  Expr ;

/* Variables and functions */
 int /*<<< orphan*/  AND_EXPR ; 
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Expr *
FUNC7(Oid relid)
{
	Expr	   *result = NULL;

	/* Do the work only if this relation exists and is a partition. */
	if (FUNC1(relid))
	{
		Relation	rel = FUNC6(relid, AccessShareLock);
		List	   *and_args;

		and_args = FUNC0(rel);

		/* Convert implicit-AND list format to boolean expression */
		if (and_args == NIL)
			result = NULL;
		else if (FUNC3(and_args) > 1)
			result = FUNC4(AND_EXPR, and_args, -1);
		else
			result = FUNC2(and_args);

		/* Keep the lock, to allow safe deparsing against the rel by caller. */
		FUNC5(rel, NoLock);
	}

	return result;
}