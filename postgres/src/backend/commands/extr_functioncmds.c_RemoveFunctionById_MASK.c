#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char prokind; } ;
struct TYPE_7__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  AGGFNOID ; 
 int /*<<< orphan*/  AggregateRelationId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCOID ; 
 char PROKIND_AGGREGATE ; 
 int /*<<< orphan*/  ProcedureRelationId ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(Oid funcOid)
{
	Relation	relation;
	HeapTuple	tup;
	char		prokind;

	/*
	 * Delete the pg_proc tuple.
	 */
	relation = FUNC8(ProcedureRelationId, RowExclusiveLock);

	tup = FUNC5(PROCOID, FUNC3(funcOid));
	if (!FUNC2(tup)) /* should not happen */
		FUNC6(ERROR, "cache lookup failed for function %u", funcOid);

	prokind = ((Form_pg_proc) FUNC1(tup))->prokind;

	FUNC0(relation, &tup->t_self);

	FUNC4(tup);

	FUNC7(relation, RowExclusiveLock);

	/*
	 * If there's a pg_aggregate tuple, delete that too.
	 */
	if (prokind == PROKIND_AGGREGATE)
	{
		relation = FUNC8(AggregateRelationId, RowExclusiveLock);

		tup = FUNC5(AGGFNOID, FUNC3(funcOid));
		if (!FUNC2(tup)) /* should not happen */
			FUNC6(ERROR, "cache lookup failed for pg_aggregate tuple for function %u", funcOid);

		FUNC0(relation, &tup->t_self);

		FUNC4(tup);

		FUNC7(relation, RowExclusiveLock);
	}
}