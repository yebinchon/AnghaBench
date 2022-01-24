#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  t_self; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__* HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int CHECKPOINT_FORCE ; 
 int CHECKPOINT_IMMEDIATE ; 
 int CHECKPOINT_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int*,int*) ; 
 int /*<<< orphan*/  DATABASEOID ; 
 int /*<<< orphan*/  DatabaseRelationId ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_OBJECT_IN_USE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_DATABASE ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ MyDatabaseId ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  OBJECT_DATABASE ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int*,int*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC26 (char*,...) ; 
 int /*<<< orphan*/  FUNC27 (char const*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC33(const char *dbname, bool missing_ok, bool force)
{
	Oid			db_id;
	bool		db_istemplate;
	Relation	pgdbrel;
	HeapTuple	tup;
	int			notherbackends;
	int			npreparedxacts;
	int			nslots,
				nslots_active;
	int			nsubscriptions;

	/*
	 * Look up the target database's OID, and get exclusive lock on it. We
	 * need this to ensure that no new backend starts up in the target
	 * database while we are deleting it (see postinit.c), and that no one is
	 * using it as a CREATE DATABASE template or trying to delete it for
	 * themselves.
	 */
	pgdbrel = FUNC32(DatabaseRelationId, RowExclusiveLock);

	if (!FUNC27(dbname, AccessExclusiveLock, &db_id, NULL, NULL,
					 &db_istemplate, NULL, NULL, NULL, NULL, NULL, NULL, NULL))
	{
		if (!missing_ok)
		{
			FUNC22(ERROR,
					(FUNC23(ERRCODE_UNDEFINED_DATABASE),
					 FUNC26("database \"%s\" does not exist", dbname)));
		}
		else
		{
			/* Close pg_database, release the lock, since we changed nothing */
			FUNC31(pgdbrel, RowExclusiveLock);
			FUNC22(NOTICE,
					(FUNC26("database \"%s\" does not exist, skipping",
							dbname)));
			return;
		}
	}

	/*
	 * Permission checks
	 */
	if (!FUNC28(db_id, FUNC9()))
		FUNC19(ACLCHECK_NOT_OWNER, OBJECT_DATABASE,
					   dbname);

	/* DROP hook for the database being removed */
	FUNC11(DatabaseRelationId, db_id, 0);

	/*
	 * Disallow dropping a DB that is marked istemplate.  This is just to
	 * prevent people from accidentally dropping template0 or template1; they
	 * can do so if they're really determined ...
	 */
	if (db_istemplate)
		FUNC22(ERROR,
				(FUNC23(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC26("cannot drop a template database")));

	/* Obviously can't drop my own database */
	if (db_id == MyDatabaseId)
		FUNC22(ERROR,
				(FUNC23(ERRCODE_OBJECT_IN_USE),
				 FUNC26("cannot drop the currently open database")));

	/*
	 * Check whether there are active logical slots that refer to the
	 * to-be-dropped database. The database lock we are holding prevents the
	 * creation of new slots using the database or existing slots becoming
	 * active.
	 */
	(void) FUNC14(db_id, &nslots, &nslots_active);
	if (nslots_active)
	{
		FUNC22(ERROR,
				(FUNC23(ERRCODE_OBJECT_IN_USE),
				 FUNC26("database \"%s\" is used by an active logical replication slot",
						dbname),
				 FUNC25("There is %d active slot.",
								  "There are %d active slots.",
								  nslots_active, nslots_active)));
	}

	/*
	 * Check if there are subscriptions defined in the target database.
	 *
	 * We can't drop them automatically because they might be holding
	 * resources in other databases/instances.
	 */
	if ((nsubscriptions = FUNC1(db_id)) > 0)
		FUNC22(ERROR,
				(FUNC23(ERRCODE_OBJECT_IN_USE),
				 FUNC26("database \"%s\" is being used by logical replication subscription",
						dbname),
				 FUNC25("There is %d subscription.",
								  "There are %d subscriptions.",
								  nsubscriptions, nsubscriptions)));


	/*
	 * Attempt to terminate all existing connections to the target database if
	 * the user has requested to do so.
	 */
	if (force)
		FUNC18(db_id);

	/*
	 * Check for other backends in the target database.  (Because we hold the
	 * database lock, no new ones can start after this.)
	 *
	 * As in CREATE DATABASE, check this after other error conditions.
	 */
	if (FUNC2(db_id, &notherbackends, &npreparedxacts))
		FUNC22(ERROR,
				(FUNC23(ERRCODE_OBJECT_IN_USE),
				 FUNC26("database \"%s\" is being accessed by other users",
						dbname),
				 FUNC24(notherbackends, npreparedxacts)));

	/*
	 * Remove the database's tuple from pg_database.
	 */
	tup = FUNC17(DATABASEOID, FUNC12(db_id));
	if (!FUNC10(tup))
		FUNC21(ERROR, "cache lookup failed for database %u", db_id);

	FUNC0(pgdbrel, &tup->t_self);

	FUNC13(tup);

	/*
	 * Delete any comments or security labels associated with the database.
	 */
	FUNC3(db_id, DatabaseRelationId);
	FUNC4(db_id, DatabaseRelationId);

	/*
	 * Remove settings associated with this database
	 */
	FUNC6(db_id, InvalidOid);

	/*
	 * Remove shared dependency references for the database.
	 */
	FUNC20(db_id);

	/*
	 * Drop db-specific replication slots.
	 */
	FUNC15(db_id);

	/*
	 * Drop pages for this database that are in the shared buffer cache. This
	 * is important to ensure that no remaining backend tries to write out a
	 * dirty buffer to the dead database later...
	 */
	FUNC5(db_id);

	/*
	 * Tell the stats collector to forget it immediately, too.
	 */
	FUNC29(db_id);

	/*
	 * Tell checkpointer to forget any pending fsync and unlink requests for
	 * files in the database; else the fsyncs will fail at next checkpoint, or
	 * worse, it will delete files that belong to a newly created database
	 * with the same OID.
	 */
	FUNC8(db_id);

	/*
	 * Force a checkpoint to make sure the checkpointer has received the
	 * message sent by ForgetDatabaseSyncRequests. On Windows, this also
	 * ensures that background procs don't hold any open files, which would
	 * cause rmdir() to fail.
	 */
	FUNC16(CHECKPOINT_IMMEDIATE | CHECKPOINT_FORCE | CHECKPOINT_WAIT);

	/*
	 * Remove all tablespace subdirs belonging to the database.
	 */
	FUNC30(db_id);

	/*
	 * Close pg_database, but keep lock till commit.
	 */
	FUNC31(pgdbrel, NoLock);

	/*
	 * Force synchronous commit, thus minimizing the window between removal of
	 * the database files and committal of the transaction. If we crash before
	 * committing, we'll have a DB that's gone on disk but still there
	 * according to pg_database, which is not good.
	 */
	FUNC7();
}