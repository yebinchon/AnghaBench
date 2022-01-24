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
struct TYPE_4__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_shdepend_dbid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DatabaseRelationId ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  SHARED_DEPENDENCY_INVALID ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SharedDependDependerIndexId ; 
 int /*<<< orphan*/  SharedDependRelationId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10(Oid databaseId)
{
	Relation	sdepRel;
	ScanKeyData key[1];
	SysScanDesc scan;
	HeapTuple	tup;

	sdepRel = FUNC9(SharedDependRelationId, RowExclusiveLock);

	/*
	 * First, delete all the entries that have the database Oid in the dbid
	 * field.
	 */
	FUNC3(&key[0],
				Anum_pg_shdepend_dbid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(databaseId));
	/* We leave the other index fields unspecified */

	scan = FUNC5(sdepRel, SharedDependDependerIndexId, true,
							  NULL, 1, key);

	while (FUNC1(tup = FUNC7(scan)))
	{
		FUNC0(sdepRel, &tup->t_self);
	}

	FUNC6(scan);

	/* Now delete all entries corresponding to the database itself */
	FUNC4(sdepRel, DatabaseRelationId, databaseId, 0, true,
						InvalidOid, InvalidOid,
						SHARED_DEPENDENCY_INVALID);

	FUNC8(sdepRel, RowExclusiveLock);
}