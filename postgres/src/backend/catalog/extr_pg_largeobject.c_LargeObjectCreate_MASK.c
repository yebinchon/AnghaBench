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
typedef  int /*<<< orphan*/  values ;
typedef  int /*<<< orphan*/  nulls ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int Datum ;

/* Variables and functions */
 int Anum_pg_largeobject_metadata_lomacl ; 
 int Anum_pg_largeobject_metadata_lomowner ; 
 int Anum_pg_largeobject_metadata_oid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LargeObjectMetadataOidIndexId ; 
 int /*<<< orphan*/  LargeObjectMetadataRelationId ; 
 int Natts_pg_largeobject_metadata ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC11(Oid loid)
{
	Relation	pg_lo_meta;
	HeapTuple	ntup;
	Oid			loid_new;
	Datum		values[Natts_pg_largeobject_metadata];
	bool		nulls[Natts_pg_largeobject_metadata];

	pg_lo_meta = FUNC10(LargeObjectMetadataRelationId,
							RowExclusiveLock);

	/*
	 * Insert metadata of the largeobject
	 */
	FUNC8(values, 0, sizeof(values));
	FUNC8(nulls, false, sizeof(nulls));

	if (FUNC4(loid))
		loid_new = loid;
	else
		loid_new = FUNC1(pg_lo_meta,
									  LargeObjectMetadataOidIndexId,
									  Anum_pg_largeobject_metadata_oid);

	values[Anum_pg_largeobject_metadata_oid - 1] = FUNC3(loid_new);
	values[Anum_pg_largeobject_metadata_lomowner - 1]
		= FUNC3(FUNC2());
	nulls[Anum_pg_largeobject_metadata_lomacl - 1] = true;

	ntup = FUNC6(FUNC5(pg_lo_meta),
						   values, nulls);

	FUNC0(pg_lo_meta, ntup);

	FUNC7(ntup);

	FUNC9(pg_lo_meta, RowExclusiveLock);

	return loid_new;
}