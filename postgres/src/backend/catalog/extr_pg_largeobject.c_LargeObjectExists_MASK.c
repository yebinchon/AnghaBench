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
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_largeobject_metadata_oid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LargeObjectMetadataOidIndexId ; 
 int /*<<< orphan*/  LargeObjectMetadataRelationId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC8(Oid loid)
{
	Relation	pg_lo_meta;
	ScanKeyData skey[1];
	SysScanDesc sd;
	HeapTuple	tuple;
	bool		retval = false;

	FUNC2(&skey[0],
				Anum_pg_largeobject_metadata_oid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC1(loid));

	pg_lo_meta = FUNC7(LargeObjectMetadataRelationId,
							AccessShareLock);

	sd = FUNC3(pg_lo_meta,
							LargeObjectMetadataOidIndexId, true,
							NULL, 1, skey);

	tuple = FUNC5(sd);
	if (FUNC0(tuple))
		retval = true;

	FUNC4(sd);

	FUNC6(pg_lo_meta, AccessShareLock);

	return retval;
}