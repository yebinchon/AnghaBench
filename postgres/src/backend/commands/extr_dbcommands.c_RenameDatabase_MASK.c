#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  datname; } ;
struct TYPE_7__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  TYPE_1__* HeapTuple ;
typedef  TYPE_2__* Form_pg_database ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (scalar_t__,int*,int*) ; 
 int /*<<< orphan*/  DATABASEOID ; 
 int /*<<< orphan*/  DatabaseRelationId ; 
 int /*<<< orphan*/  ERRCODE_DUPLICATE_DATABASE ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_IN_USE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_DATABASE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ MyDatabaseId ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  OBJECT_DATABASE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char const*,int) ; 
 int /*<<< orphan*/  FUNC17 (char const*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ObjectAddress
FUNC24(const char *oldname, const char *newname)
{
	Oid			db_id;
	HeapTuple	newtup;
	Relation	rel;
	int			notherbackends;
	int			npreparedxacts;
	ObjectAddress address;

	/*
	 * Look up the target database's OID, and get exclusive lock on it. We
	 * need this for the same reasons as DROP DATABASE.
	 */
	rel = FUNC23(DatabaseRelationId, RowExclusiveLock);

	if (!FUNC17(oldname, AccessExclusiveLock, &db_id, NULL, NULL,
					 NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL))
		FUNC12(ERROR,
				(FUNC13(ERRCODE_UNDEFINED_DATABASE),
				 FUNC15("database \"%s\" does not exist", oldname)));

	/* must be owner */
	if (!FUNC20(db_id, FUNC3()))
		FUNC10(ACLCHECK_NOT_OWNER, OBJECT_DATABASE,
					   oldname);

	/* must have createdb rights */
	if (!FUNC18())
		FUNC12(ERROR,
				(FUNC13(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC15("permission denied to rename database")));

	/*
	 * If built with appropriate switch, whine when regression-testing
	 * conventions for database names are violated.
	 */
#ifdef ENFORCE_REGRESSION_TEST_NAME_RESTRICTIONS
	if (strstr(newname, "regression") == NULL)
		elog(WARNING, "databases created by regression test cases should have names including \"regression\"");
#endif

	/*
	 * Make sure the new name doesn't exist.  See notes for same error in
	 * CREATE DATABASE.
	 */
	if (FUNC8(FUNC16(newname, true)))
		FUNC12(ERROR,
				(FUNC13(ERRCODE_DUPLICATE_DATABASE),
				 FUNC15("database \"%s\" already exists", newname)));

	/*
	 * XXX Client applications probably store the current database somewhere,
	 * so renaming it could cause confusion.  On the other hand, there may not
	 * be an actual problem besides a little confusion, so think about this
	 * and decide.
	 */
	if (db_id == MyDatabaseId)
		FUNC12(ERROR,
				(FUNC13(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC15("current database cannot be renamed")));

	/*
	 * Make sure the database does not have active sessions.  This is the same
	 * concern as above, but applied to other sessions.
	 *
	 * As in CREATE DATABASE, check this after other error conditions.
	 */
	if (FUNC1(db_id, &notherbackends, &npreparedxacts))
		FUNC12(ERROR,
				(FUNC13(ERRCODE_OBJECT_IN_USE),
				 FUNC15("database \"%s\" is being accessed by other users",
						oldname),
				 FUNC14(notherbackends, npreparedxacts)));

	/* rename */
	newtup = FUNC9(DATABASEOID, FUNC7(db_id));
	if (!FUNC4(newtup))
		FUNC11(ERROR, "cache lookup failed for database %u", db_id);
	FUNC19(&(((Form_pg_database) FUNC2(newtup))->datname), newname);
	FUNC0(rel, &newtup->t_self, newtup);

	FUNC5(DatabaseRelationId, db_id, 0);

	FUNC6(address, DatabaseRelationId, db_id);

	/*
	 * Close pg_database, but keep lock till commit.
	 */
	FUNC22(rel, NoLock);

	return address;
}