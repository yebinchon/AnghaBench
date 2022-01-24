#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_10__ {int /*<<< orphan*/  spcname; int /*<<< orphan*/  oid; } ;
struct TYPE_9__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_tablespace ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NO_PRIV ; 
 int /*<<< orphan*/  Anum_pg_tablespace_spcname ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_OBJECT ; 
 int /*<<< orphan*/  ERRCODE_RESERVED_NAME ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  OBJECT_TABLESPACE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TableSpaceRelationId ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  allowSystemTableMods ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char const*) ; 
 TYPE_1__* FUNC15 (TYPE_1__*) ; 
 TYPE_1__* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC24(const char *oldname, const char *newname)
{
	Oid			tspId;
	Relation	rel;
	ScanKeyData entry[1];
	TableScanDesc scan;
	HeapTuple	tup;
	HeapTuple	newtuple;
	Form_pg_tablespace newform;
	ObjectAddress address;

	/* Search pg_tablespace */
	rel = FUNC23(TableSpaceRelationId, RowExclusiveLock);

	FUNC8(&entry[0],
				Anum_pg_tablespace_spcname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC0(oldname));
	scan = FUNC20(rel, 1, entry);
	tup = FUNC16(scan, ForwardScanDirection);
	if (!FUNC4(tup))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_UNDEFINED_OBJECT),
				 FUNC14("tablespace \"%s\" does not exist",
						oldname)));

	newtuple = FUNC15(tup);
	newform = (Form_pg_tablespace) FUNC2(newtuple);
	tspId = newform->oid;

	FUNC22(scan);

	/* Must be owner */
	if (!FUNC18(tspId, FUNC3()))
		FUNC9(ACLCHECK_NO_PRIV, OBJECT_TABLESPACE, oldname);

	/* Validate new name */
	if (!allowSystemTableMods && FUNC6(newname))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_RESERVED_NAME),
				 FUNC14("unacceptable tablespace name \"%s\"", newname),
				 FUNC13("The prefix \"pg_\" is reserved for system tablespaces.")));

	/*
	 * If built with appropriate switch, whine when regression-testing
	 * conventions for tablespace names are violated.
	 */
#ifdef ENFORCE_REGRESSION_TEST_NAME_RESTRICTIONS
	if (strncmp(newname, "regress_", 8) != 0)
		elog(WARNING, "tablespaces created by regression test cases should have names starting with \"regress_\"");
#endif

	/* Make sure the new name doesn't exist */
	FUNC8(&entry[0],
				Anum_pg_tablespace_spcname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC0(newname));
	scan = FUNC20(rel, 1, entry);
	tup = FUNC16(scan, ForwardScanDirection);
	if (FUNC4(tup))
		FUNC11(ERROR,
				(FUNC12(ERRCODE_DUPLICATE_OBJECT),
				 FUNC14("tablespace \"%s\" already exists",
						newname)));

	FUNC22(scan);

	/* OK, update the entry */
	FUNC17(&(newform->spcname), newname);

	FUNC1(rel, &newtuple->t_self, newtuple);

	FUNC5(TableSpaceRelationId, tspId, 0);

	FUNC7(address, TableSpaceRelationId, tspId);

	FUNC21(rel, NoLock);

	return address;
}