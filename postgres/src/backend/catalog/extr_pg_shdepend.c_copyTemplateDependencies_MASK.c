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
typedef  int /*<<< orphan*/  replace ;
typedef  int /*<<< orphan*/  nulls ;
typedef  int /*<<< orphan*/  TupleDesc ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  int Datum ;
typedef  int /*<<< orphan*/  CatalogIndexState ;

/* Variables and functions */
 int Anum_pg_shdepend_dbid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int Natts_pg_shdepend ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SharedDependDependerIndexId ; 
 int /*<<< orphan*/  SharedDependRelationId ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC15(Oid templateDbId, Oid newDbId)
{
	Relation	sdepRel;
	TupleDesc	sdepDesc;
	ScanKeyData key[1];
	SysScanDesc scan;
	HeapTuple	tup;
	CatalogIndexState indstate;
	Datum		values[Natts_pg_shdepend];
	bool		nulls[Natts_pg_shdepend];
	bool		replace[Natts_pg_shdepend];

	sdepRel = FUNC14(SharedDependRelationId, RowExclusiveLock);
	sdepDesc = FUNC5(sdepRel);

	indstate = FUNC1(sdepRel);

	/* Scan all entries with dbid = templateDbId */
	FUNC6(&key[0],
				Anum_pg_shdepend_dbid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(templateDbId));

	scan = FUNC10(sdepRel, SharedDependDependerIndexId, true,
							  NULL, 1, key);

	/* Set up to copy the tuples except for inserting newDbId */
	FUNC9(values, 0, sizeof(values));
	FUNC9(nulls, false, sizeof(nulls));
	FUNC9(replace, false, sizeof(replace));

	replace[Anum_pg_shdepend_dbid - 1] = true;
	values[Anum_pg_shdepend_dbid - 1] = FUNC4(newDbId);

	/*
	 * Copy the entries of the original database, changing the database Id to
	 * that of the new database.  Note that because we are not copying rows
	 * with dbId == 0 (ie, rows describing dependent shared objects) we won't
	 * copy the ownership dependency of the template database itself; this is
	 * what we want.
	 */
	while (FUNC3(tup = FUNC12(scan)))
	{
		HeapTuple	newtup;

		newtup = FUNC8(tup, sdepDesc, values, nulls, replace);
		FUNC2(sdepRel, newtup, indstate);

		FUNC7(newtup);
	}

	FUNC11(scan);

	FUNC0(indstate);
	FUNC13(sdepRel, RowExclusiveLock);
}