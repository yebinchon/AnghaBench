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
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_database ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_database_datname ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  DatabaseNameIndexId ; 
 int /*<<< orphan*/  DatabaseRelationId ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_DATABASE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC13(const char *dbname, bool missing_ok)
{
	Relation	pg_database;
	ScanKeyData entry[1];
	SysScanDesc scan;
	HeapTuple	dbtuple;
	Oid			oid;

	/*
	 * There's no syscache for pg_database indexed by name, so we must look
	 * the hard way.
	 */
	pg_database = FUNC12(DatabaseRelationId, AccessShareLock);
	FUNC4(&entry[0],
				Anum_pg_database_datname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC0(dbname));
	scan = FUNC8(pg_database, DatabaseNameIndexId, true,
							  NULL, 1, entry);

	dbtuple = FUNC10(scan);

	/* We assume that there can be at most one matching tuple */
	if (FUNC2(dbtuple))
		oid = ((Form_pg_database) FUNC1(dbtuple))->oid;
	else
		oid = InvalidOid;

	FUNC9(scan);
	FUNC11(pg_database, AccessShareLock);

	if (!FUNC3(oid) && !missing_ok)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_UNDEFINED_DATABASE),
				 FUNC7("database \"%s\" does not exist",
						dbname)));

	return oid;
}