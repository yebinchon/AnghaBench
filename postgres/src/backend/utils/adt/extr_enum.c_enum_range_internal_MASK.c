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
struct TYPE_2__ {scalar_t__ oid; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_enum ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_enum_enumtypid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  EnumRelationId ; 
 int /*<<< orphan*/  EnumTypIdSortOrderIndexId ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,scalar_t__,int,int,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ArrayType *
FUNC17(Oid enumtypoid, Oid lower, Oid upper)
{
	ArrayType  *result;
	Relation	enum_rel;
	Relation	enum_idx;
	SysScanDesc enum_scan;
	HeapTuple	enum_tuple;
	ScanKeyData skey;
	Datum	   *elems;
	int			max,
				cnt;
	bool		left_found;

	/*
	 * Scan the enum members in order using pg_enum_typid_sortorder_index.
	 * Note we must not use the syscache.  See comments for RenumberEnumType
	 * in catalog/pg_enum.c for more info.
	 */
	FUNC4(&skey,
				Anum_pg_enum_enumtypid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(enumtypoid));

	enum_rel = FUNC16(EnumRelationId, AccessShareLock);
	enum_idx = FUNC8(EnumTypIdSortOrderIndexId, AccessShareLock);
	enum_scan = FUNC12(enum_rel, enum_idx, NULL, 1, &skey);

	max = 64;
	elems = (Datum *) FUNC9(max * sizeof(Datum));
	cnt = 0;
	left_found = !FUNC3(lower);

	while (FUNC1(enum_tuple = FUNC14(enum_scan, ForwardScanDirection)))
	{
		Oid			enum_oid = ((Form_pg_enum) FUNC0(enum_tuple))->oid;

		if (!left_found && lower == enum_oid)
			left_found = true;

		if (left_found)
		{
			/* check it's safe to use in SQL */
			FUNC5(enum_tuple);

			if (cnt >= max)
			{
				max *= 2;
				elems = (Datum *) FUNC11(elems, max * sizeof(Datum));
			}

			elems[cnt++] = FUNC2(enum_oid);
		}

		if (FUNC3(upper) && upper == enum_oid)
			break;
	}

	FUNC13(enum_scan);
	FUNC7(enum_idx, AccessShareLock);
	FUNC15(enum_rel, AccessShareLock);

	/* and build the result array */
	/* note this hardwires some details about the representation of Oid */
	result = FUNC6(elems, cnt, enumtypoid, sizeof(Oid), true, 'i');

	FUNC10(elems);

	return result;
}