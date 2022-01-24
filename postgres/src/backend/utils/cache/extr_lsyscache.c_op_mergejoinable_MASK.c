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
struct TYPE_4__ {scalar_t__ cmp_proc; } ;
typedef  TYPE_1__ TypeCacheEntry ;
struct TYPE_5__ {int oprcanmerge; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_operator ;

/* Variables and functions */
 scalar_t__ ARRAY_EQ_OP ; 
 scalar_t__ F_BTARRAYCMP ; 
 scalar_t__ F_BTRECORDCMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPEROID ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ RECORD_EQ_OP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYPECACHE_CMP_PROC ; 
 TYPE_1__* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

bool
FUNC6(Oid opno, Oid inputtype)
{
	bool		result = false;
	HeapTuple	tp;
	TypeCacheEntry *typentry;

	/*
	 * For array_eq or record_eq, we can sort if the element or field types
	 * are all sortable.  We could implement all the checks for that here, but
	 * the typcache already does that and caches the results too, so let's
	 * rely on the typcache.
	 */
	if (opno == ARRAY_EQ_OP)
	{
		typentry = FUNC5(inputtype, TYPECACHE_CMP_PROC);
		if (typentry->cmp_proc == F_BTARRAYCMP)
			result = true;
	}
	else if (opno == RECORD_EQ_OP)
	{
		typentry = FUNC5(inputtype, TYPECACHE_CMP_PROC);
		if (typentry->cmp_proc == F_BTRECORDCMP)
			result = true;
	}
	else
	{
		/* For all other operators, rely on pg_operator.oprcanmerge */
		tp = FUNC4(OPEROID, FUNC2(opno));
		if (FUNC1(tp))
		{
			Form_pg_operator optup = (Form_pg_operator) FUNC0(tp);

			result = optup->oprcanmerge;
			FUNC3(tp);
		}
	}
	return result;
}