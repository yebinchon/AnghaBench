#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  repl_repl ;
typedef  int /*<<< orphan*/  repl_null ;
struct TYPE_12__ {int /*<<< orphan*/  datdba; int /*<<< orphan*/  oid; } ;
struct TYPE_11__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_database ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Acl ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int Anum_pg_database_datacl ; 
 int Anum_pg_database_datdba ; 
 int /*<<< orphan*/  Anum_pg_database_datname ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  DatabaseNameIndexId ; 
 int /*<<< orphan*/  DatabaseRelationId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_DATABASE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_NAMEEQ ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int Natts_pg_database ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  OBJECT_DATABASE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* FUNC22 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC23 (int*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC30(const char *dbname, Oid newOwnerId)
{
	Oid			db_id;
	HeapTuple	tuple;
	Relation	rel;
	ScanKeyData scankey;
	SysScanDesc scan;
	Form_pg_database datForm;
	ObjectAddress address;

	/*
	 * Get the old tuple.  We don't need a lock on the database per se,
	 * because we're not going to do anything that would mess up incoming
	 * connections.
	 */
	rel = FUNC29(DatabaseRelationId, RowExclusiveLock);
	FUNC11(&scankey,
				Anum_pg_database_datname,
				BTEqualStrategyNumber, F_NAMEEQ,
				FUNC0(dbname));
	scan = FUNC25(rel, DatabaseNameIndexId, true,
							  NULL, 1, &scankey);
	tuple = FUNC27(scan);
	if (!FUNC5(tuple))
		FUNC16(ERROR,
				(FUNC17(ERRCODE_UNDEFINED_DATABASE),
				 FUNC18("database \"%s\" does not exist", dbname)));

	datForm = (Form_pg_database) FUNC3(tuple);
	db_id = datForm->oid;

	/*
	 * If the new owner is the same as the existing owner, consider the
	 * command to have succeeded.  This is to be consistent with other
	 * objects.
	 */
	if (datForm->datdba != newOwnerId)
	{
		Datum		repl_val[Natts_pg_database];
		bool		repl_null[Natts_pg_database];
		bool		repl_repl[Natts_pg_database];
		Acl		   *newAcl;
		Datum		aclDatum;
		bool		isNull;
		HeapTuple	newtuple;

		/* Otherwise, must be owner of the existing object */
		if (!FUNC24(db_id, FUNC4()))
			FUNC12(ACLCHECK_NOT_OWNER, OBJECT_DATABASE,
						   dbname);

		/* Must be able to become new owner */
		FUNC15(FUNC4(), newOwnerId);

		/*
		 * must have createdb rights
		 *
		 * NOTE: This is different from other alter-owner checks in that the
		 * current user is checked for createdb privileges instead of the
		 * destination owner.  This is consistent with the CREATE case for
		 * databases.  Because superusers will always have this right, we need
		 * no special case for them.
		 */
		if (!FUNC19())
			FUNC16(ERROR,
					(FUNC17(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC18("permission denied to change owner of database")));

		FUNC23(repl_null, false, sizeof(repl_null));
		FUNC23(repl_repl, false, sizeof(repl_repl));

		repl_repl[Anum_pg_database_datdba - 1] = true;
		repl_val[Anum_pg_database_datdba - 1] = FUNC8(newOwnerId);

		/*
		 * Determine the modified ACL for the new owner.  This is only
		 * necessary when the ACL is non-null.
		 */
		aclDatum = FUNC21(tuple,
								Anum_pg_database_datacl,
								FUNC10(rel),
								&isNull);
		if (!isNull)
		{
			newAcl = FUNC13(FUNC2(aclDatum),
								 datForm->datdba, newOwnerId);
			repl_repl[Anum_pg_database_datacl - 1] = true;
			repl_val[Anum_pg_database_datacl - 1] = FUNC9(newAcl);
		}

		newtuple = FUNC22(tuple, FUNC10(rel), repl_val, repl_null, repl_repl);
		FUNC1(rel, &newtuple->t_self, newtuple);

		FUNC20(newtuple);

		/* Update owner dependency reference */
		FUNC14(DatabaseRelationId, db_id, newOwnerId);
	}

	FUNC6(DatabaseRelationId, db_id, 0);

	FUNC7(address, DatabaseRelationId, db_id);

	FUNC26(scan);

	/* Close pg_database, but keep lock till commit */
	FUNC28(rel, NoLock);

	return address;
}