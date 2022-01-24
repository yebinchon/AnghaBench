#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_enum ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_enum_enumtypid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  EnumRelationId ; 
 int /*<<< orphan*/  EnumTypIdSortOrderIndexId ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Oid
FUNC12(Oid enumtypoid, ScanDirection direction)
{
	Relation	enum_rel;
	Relation	enum_idx;
	SysScanDesc enum_scan;
	HeapTuple	enum_tuple;
	ScanKeyData skey;
	Oid			minmax;

	/*
	 * Find the first/last enum member using pg_enum_typid_sortorder_index.
	 * Note we must not use the syscache.  See comments for RenumberEnumType
	 * in catalog/pg_enum.c for more info.
	 */
	FUNC3(&skey,
				Anum_pg_enum_enumtypid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(enumtypoid));

	enum_rel = FUNC11(EnumRelationId, AccessShareLock);
	enum_idx = FUNC6(EnumTypIdSortOrderIndexId, AccessShareLock);
	enum_scan = FUNC7(enum_rel, enum_idx, NULL,
										   1, &skey);

	enum_tuple = FUNC9(enum_scan, direction);
	if (FUNC1(enum_tuple))
	{
		/* check it's safe to use in SQL */
		FUNC4(enum_tuple);
		minmax = ((Form_pg_enum) FUNC0(enum_tuple))->oid;
	}
	else
	{
		/* should only happen with an empty enum */
		minmax = InvalidOid;
	}

	FUNC8(enum_scan);
	FUNC5(enum_idx, AccessShareLock);
	FUNC10(enum_rel, AccessShareLock);

	return minmax;
}