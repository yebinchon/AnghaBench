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
 int /*<<< orphan*/  Anum_pg_largeobject_loid ; 
 int /*<<< orphan*/  Anum_pg_largeobject_metadata_oid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  LargeObjectLOidPNIndexId ; 
 int /*<<< orphan*/  LargeObjectMetadataOidIndexId ; 
 int /*<<< orphan*/  LargeObjectMetadataRelationId ; 
 int /*<<< orphan*/  LargeObjectRelationId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC12(Oid loid)
{
	Relation	pg_lo_meta;
	Relation	pg_largeobject;
	ScanKeyData skey[1];
	SysScanDesc scan;
	HeapTuple	tuple;

	pg_lo_meta = FUNC11(LargeObjectMetadataRelationId,
							RowExclusiveLock);

	pg_largeobject = FUNC11(LargeObjectRelationId,
								RowExclusiveLock);

	/*
	 * Delete an entry from pg_largeobject_metadata
	 */
	FUNC3(&skey[0],
				Anum_pg_largeobject_metadata_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(loid));

	scan = FUNC7(pg_lo_meta,
							  LargeObjectMetadataOidIndexId, true,
							  NULL, 1, skey);

	tuple = FUNC9(scan);
	if (!FUNC1(tuple))
		FUNC4(ERROR,
				(FUNC5(ERRCODE_UNDEFINED_OBJECT),
				 FUNC6("large object %u does not exist", loid)));

	FUNC0(pg_lo_meta, &tuple->t_self);

	FUNC8(scan);

	/*
	 * Delete all the associated entries from pg_largeobject
	 */
	FUNC3(&skey[0],
				Anum_pg_largeobject_loid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC2(loid));

	scan = FUNC7(pg_largeobject,
							  LargeObjectLOidPNIndexId, true,
							  NULL, 1, skey);
	while (FUNC1(tuple = FUNC9(scan)))
	{
		FUNC0(pg_largeobject, &tuple->t_self);
	}

	FUNC8(scan);

	FUNC10(pg_largeobject, RowExclusiveLock);

	FUNC10(pg_lo_meta, RowExclusiveLock);
}