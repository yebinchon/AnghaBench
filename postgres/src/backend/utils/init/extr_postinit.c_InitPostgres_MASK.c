#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dbname ;
struct TYPE_8__ {char* databaseId; } ;
struct TYPE_7__ {scalar_t__ canAcceptConnections; } ;
struct TYPE_6__ {char* oid; scalar_t__ dattablespace; int /*<<< orphan*/  datname; } ;
typedef  char* Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_database ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CAC_WAITBACKUP ; 
 int /*<<< orphan*/  CheckDeadLockAlert ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * CurrentResourceOwner ; 
 int /*<<< orphan*/  DEADLOCK_TIMEOUT ; 
 int /*<<< orphan*/  DEBUG3 ; 
 scalar_t__ DEFAULTTABLESPACE_OID ; 
 int /*<<< orphan*/  DatabaseRelationId ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_TOO_MANY_CONNECTIONS ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_DATABASE ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDLE_IN_TRANSACTION_SESSION_TIMEOUT ; 
 int /*<<< orphan*/  IdleInTransactionSessionTimeoutHandler ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 scalar_t__ InvalidBackendId ; 
 int /*<<< orphan*/  FUNC23 () ; 
 scalar_t__ FUNC24 () ; 
 scalar_t__ FUNC25 () ; 
 scalar_t__ IsBackgroundWorker ; 
 scalar_t__ IsBinaryUpgrade ; 
 int FUNC26 () ; 
 scalar_t__ IsUnderPostmaster ; 
 int /*<<< orphan*/  LOCK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LockTimeoutHandler ; 
 scalar_t__ MaxBackends ; 
 scalar_t__ MyBackendId ; 
 char* MyDatabaseId ; 
 scalar_t__ MyDatabaseTableSpace ; 
 TYPE_5__* MyProc ; 
 TYPE_2__* MyProcPort ; 
 int NAMEDATALEN ; 
 char const* FUNC28 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*) ; 
 long PostAuthDelay ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  FUNC37 (int) ; 
 scalar_t__ ReservedBackends ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  STATEMENT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int /*<<< orphan*/  FUNC39 (char*) ; 
 int /*<<< orphan*/  FUNC40 (int) ; 
 int /*<<< orphan*/  ShutdownPostgres ; 
 int /*<<< orphan*/  ShutdownXLOG ; 
 int /*<<< orphan*/  FUNC41 () ; 
 int /*<<< orphan*/  FUNC42 () ; 
 int /*<<< orphan*/  StatementTimeoutHandler ; 
 char* TemplateDbOid ; 
 int /*<<< orphan*/  FUNC43 () ; 
 int /*<<< orphan*/  FUNC44 (char*) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  XACT_READ_COMMITTED ; 
 int /*<<< orphan*/  XactIsoLevel ; 
 int FUNC45 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  am_db_walsender ; 
 scalar_t__ am_walsender ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC48 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC49 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC50 () ; 
 int /*<<< orphan*/  FUNC51 (char*,...) ; 
 int /*<<< orphan*/  FUNC52 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC53 (char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC54 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC55 () ; 
 int /*<<< orphan*/  FUNC56 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC57 (long) ; 
 int /*<<< orphan*/  FUNC58 () ; 
 int /*<<< orphan*/  FUNC59 () ; 
 int /*<<< orphan*/  FUNC60 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC61 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC62 (char*,char*) ; 
 int /*<<< orphan*/  FUNC63 (char*,char const*,int) ; 
 int FUNC64 () ; 

void
FUNC65(const char *in_dbname, Oid dboid, const char *username,
			 Oid useroid, char *out_dbname, bool override_allow_connections)
{
	bool		bootstrap = FUNC26();
	bool		am_superuser;
	char	   *fullpath;
	char		dbname[NAMEDATALEN];

	FUNC47(DEBUG3, "InitPostgres");

	/*
	 * Add my PGPROC struct to the ProcArray.
	 *
	 * Once I have done this, I am visible to other backends!
	 */
	FUNC17();

	/*
	 * Initialize my entry in the shared-invalidation manager's array of
	 * per-backend data.
	 *
	 * Sets up MyBackendId, a unique backend identifier.
	 */
	MyBackendId = InvalidBackendId;

	FUNC40(false);

	if (MyBackendId > MaxBackends || MyBackendId <= 0)
		FUNC47(FATAL, "bad backend ID: %d", MyBackendId);

	/* Now that we have a BackendId, we can participate in ProcSignal */
	FUNC31(MyBackendId);

	/*
	 * Also set up timeout handlers needed for backend operation.  We need
	 * these in every case except bootstrap.
	 */
	if (!bootstrap)
	{
		FUNC33(DEADLOCK_TIMEOUT, CheckDeadLockAlert);
		FUNC33(STATEMENT_TIMEOUT, StatementTimeoutHandler);
		FUNC33(LOCK_TIMEOUT, LockTimeoutHandler);
		FUNC33(IDLE_IN_TRANSACTION_SESSION_TIMEOUT,
						IdleInTransactionSessionTimeoutHandler);
	}

	/*
	 * bufmgr needs another initialization call too
	 */
	FUNC14();

	/*
	 * Initialize local process's access to XLOG.
	 */
	if (IsUnderPostmaster)
	{
		/*
		 * The postmaster already started the XLOG machinery, but we need to
		 * call InitXLOGAccess(), if the system isn't in hot-standby mode.
		 * This is handled by calling RecoveryInProgress and ignoring the
		 * result.
		 */
		(void) FUNC32();
	}
	else
	{
		/*
		 * We are either a bootstrap process or a standalone backend. Either
		 * way, start up the XLOG machinery, and register to have it closed
		 * down at exit.
		 *
		 * We don't yet have an aux-process resource owner, but StartupXLOG
		 * and ShutdownXLOG will need one.  Hence, create said resource owner
		 * (and register a callback to clean it up after ShutdownXLOG runs).
		 */
		FUNC3();

		FUNC42();
		/* Release (and warn about) any buffer pins leaked in StartupXLOG */
		FUNC37(true);
		/* Reset CurrentResourceOwner to nothing for the moment */
		CurrentResourceOwner = NULL;

		FUNC56(ShutdownXLOG, 0);
	}

	/*
	 * Initialize the relation cache and the system catalog caches.  Note that
	 * no catalog access happens here; we only set up the hashtable structure.
	 * We must do this before starting a transaction because transaction abort
	 * would try to touch these hashtables.
	 */
	FUNC34();
	FUNC15();
	FUNC16();

	/* Initialize portal manager */
	FUNC4();

	/* Initialize stats collection --- must happen before first xact */
	if (!bootstrap)
		FUNC59();

	/*
	 * Load relcache entries for the shared system catalogs.  This must create
	 * at least entries for pg_database and catalogs used for authentication.
	 */
	FUNC35();

	/*
	 * Set up process-exit callback to do pre-shutdown cleanup.  This is the
	 * first before_shmem_exit callback we register; thus, this will be the
	 * last thing we do before low-level modules like the buffer manager begin
	 * to close down.  We need to have this in place before we begin our first
	 * transaction --- if we fail during the initialization transaction, as is
	 * entirely possible, we need the AbortTransaction call to clean up.
	 */
	FUNC46(ShutdownPostgres, 0);

	/* The autovacuum launcher is done here */
	if (FUNC24())
	{
		/* report this backend in the PgBackendStatus array */
		FUNC58();

		return;
	}

	/*
	 * Start a new transaction here before first access to db, and get a
	 * snapshot.  We don't have a use for the snapshot itself, but we're
	 * interested in the secondary effect that it sets RecentGlobalXmin. (This
	 * is critical for anything that reads heap pages, because HOT may decide
	 * to prune them even if the process doesn't attempt to modify any
	 * tuples.)
	 */
	if (!bootstrap)
	{
		/* statement_timestamp must be set for timeouts to work correctly */
		FUNC38();
		FUNC41();

		/*
		 * transaction_isolation will have been set to the default by the
		 * above.  If the default is "serializable", and we are in hot
		 * standby, we will fail if we don't change it to something lower.
		 * Fortunately, "read committed" is plenty good enough.
		 */
		XactIsoLevel = XACT_READ_COMMITTED;

		(void) FUNC10();
	}

	/*
	 * Perform client authentication if necessary, then figure out our
	 * postgres user ID, and see if we are a superuser.
	 *
	 * In standalone mode and in autovacuum worker processes, we use a fixed
	 * ID, otherwise we figure it out from the authenticated user name.
	 */
	if (bootstrap || FUNC25())
	{
		FUNC22();
		am_superuser = true;
	}
	else if (!IsUnderPostmaster)
	{
		FUNC22();
		am_superuser = true;
		if (!FUNC43())
			FUNC48(WARNING,
					(FUNC49(ERRCODE_UNDEFINED_OBJECT),
					 FUNC53("no roles are defined in this database system"),
					 FUNC52("You should immediately run CREATE USER \"%s\" SUPERUSER;.",
							 username != NULL ? username : "postgres")));
	}
	else if (IsBackgroundWorker)
	{
		if (username == NULL && !FUNC29(useroid))
		{
			FUNC22();
			am_superuser = true;
		}
		else
		{
			FUNC21(username, useroid);
			am_superuser = FUNC64();
		}
	}
	else
	{
		/* normal multiuser case */
		FUNC0(MyProcPort != NULL);
		FUNC30(MyProcPort);
		FUNC21(username, useroid);
		am_superuser = FUNC64();
	}

	/*
	 * If we're trying to shut down, only superusers can connect, and new
	 * replication connections are not allowed.
	 */
	if ((!am_superuser || am_walsender) &&
		MyProcPort != NULL &&
		MyProcPort->canAcceptConnections == CAC_WAITBACKUP)
	{
		if (am_walsender)
			FUNC48(FATAL,
					(FUNC49(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC53("new replication connections are not allowed during database shutdown")));
		else
			FUNC48(FATAL,
					(FUNC49(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC53("must be superuser to connect during database shutdown")));
	}

	/*
	 * Binary upgrades only allowed super-user connections
	 */
	if (IsBinaryUpgrade && !am_superuser)
	{
		FUNC48(FATAL,
				(FUNC49(ERRCODE_INSUFFICIENT_PRIVILEGE),
				 FUNC53("must be superuser to connect in binary upgrade mode")));
	}

	/*
	 * The last few connection slots are reserved for superusers.  Replication
	 * connections are drawn from slots reserved with max_wal_senders and not
	 * limited by max_connections or superuser_reserved_connections.
	 */
	if (!am_superuser && !am_walsender &&
		ReservedBackends > 0 &&
		!FUNC12(ReservedBackends))
		FUNC48(FATAL,
				(FUNC49(ERRCODE_TOO_MANY_CONNECTIONS),
				 FUNC53("remaining connection slots are reserved for non-replication superuser connections")));

	/* Check replication permissions needed for walsender processes. */
	if (am_walsender)
	{
		FUNC0(!bootstrap);

		if (!FUNC64() && !FUNC54(FUNC11()))
			FUNC48(FATAL,
					(FUNC49(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC53("must be superuser or replication role to start walsender")));
	}

	/*
	 * If this is a plain walsender only supporting physical replication, we
	 * don't want to connect to any particular database. Just finish the
	 * backend startup by processing any options from the startup packet, and
	 * we're done.
	 */
	if (am_walsender && !am_db_walsender)
	{
		/* process any options passed in the startup packet */
		if (MyProcPort != NULL)
			FUNC61(MyProcPort, am_superuser);

		/* Apply PostAuthDelay as soon as we've read all options */
		if (PostAuthDelay > 0)
			FUNC57(PostAuthDelay * 1000000L);

		/* initialize client encoding */
		FUNC18();

		/* report this backend in the PgBackendStatus array */
		FUNC58();

		/* close the transaction we started above */
		FUNC2();

		return;
	}

	/*
	 * Set up the global variables holding database id and default tablespace.
	 * But note we won't actually try to touch the database just yet.
	 *
	 * We take a shortcut in the bootstrap case, otherwise we have to look up
	 * the db's entry in pg_database.
	 */
	if (bootstrap)
	{
		MyDatabaseId = TemplateDbOid;
		MyDatabaseTableSpace = DEFAULTTABLESPACE_OID;
	}
	else if (in_dbname != NULL)
	{
		HeapTuple	tuple;
		Form_pg_database dbform;

		tuple = FUNC7(in_dbname);
		if (!FUNC13(tuple))
			FUNC48(FATAL,
					(FUNC49(ERRCODE_UNDEFINED_DATABASE),
					 FUNC53("database \"%s\" does not exist", in_dbname)));
		dbform = (Form_pg_database) FUNC5(tuple);
		MyDatabaseId = dbform->oid;
		MyDatabaseTableSpace = dbform->dattablespace;
		/* take database name from the caller, just for paranoia */
		FUNC63(dbname, in_dbname, sizeof(dbname));
	}
	else if (FUNC29(dboid))
	{
		/* caller specified database by OID */
		HeapTuple	tuple;
		Form_pg_database dbform;

		tuple = FUNC8(dboid);
		if (!FUNC13(tuple))
			FUNC48(FATAL,
					(FUNC49(ERRCODE_UNDEFINED_DATABASE),
					 FUNC53("database %u does not exist", dboid)));
		dbform = (Form_pg_database) FUNC5(tuple);
		MyDatabaseId = dbform->oid;
		MyDatabaseTableSpace = dbform->dattablespace;
		FUNC0(MyDatabaseId == dboid);
		FUNC63(dbname, FUNC28(dbform->datname), sizeof(dbname));
		/* pass the database name back to the caller */
		if (out_dbname)
			FUNC62(out_dbname, dbname);
	}
	else
	{
		/*
		 * If this is a background worker not bound to any particular
		 * database, we're done now.  Everything that follows only makes sense
		 * if we are bound to a specific database.  We do need to close the
		 * transaction we started before returning.
		 */
		if (!bootstrap)
		{
			FUNC58();
			FUNC2();
		}
		return;
	}

	/*
	 * Now, take a writer's lock on the database we are trying to connect to.
	 * If there is a concurrently running DROP DATABASE on that database, this
	 * will block us until it finishes (and has committed its update of
	 * pg_database).
	 *
	 * Note that the lock is not held long, only until the end of this startup
	 * transaction.  This is OK since we will advertise our use of the
	 * database in the ProcArray before dropping the lock (in fact, that's the
	 * next thing to do).  Anyone trying a DROP DATABASE after this point will
	 * see us in the array once they have the lock.  Ordering is important for
	 * this because we don't want to advertise ourselves as being in this
	 * database until we have the lock; otherwise we create what amounts to a
	 * deadlock with CountOtherDBBackends().
	 *
	 * Note: use of RowExclusiveLock here is reasonable because we envision
	 * our session as being a concurrent writer of the database.  If we had a
	 * way of declaring a session as being guaranteed-read-only, we could use
	 * AccessShareLock for such sessions and thereby not conflict against
	 * CREATE DATABASE.
	 */
	if (!bootstrap)
		FUNC27(DatabaseRelationId, MyDatabaseId, 0,
						 RowExclusiveLock);

	/*
	 * Now we can mark our PGPROC entry with the database ID.
	 *
	 * We assume this is an atomic store so no lock is needed; though actually
	 * things would work fine even if it weren't atomic.  Anyone searching the
	 * ProcArray for this database's ID should hold the database lock, so they
	 * would not be executing concurrently with this store.  A process looking
	 * for another database's ID could in theory see a chance match if it read
	 * a partially-updated databaseId value; but as long as all such searches
	 * wait and retry, as in CountOtherDBBackends(), they will certainly see
	 * the correct value on their next try.
	 */
	MyProc->databaseId = MyDatabaseId;

	/*
	 * We established a catalog snapshot while reading pg_authid and/or
	 * pg_database; but until we have set up MyDatabaseId, we won't react to
	 * incoming sinval messages for unshared catalogs, so we won't realize it
	 * if the snapshot has been invalidated.  Assume it's no good anymore.
	 */
	FUNC23();

	/*
	 * Recheck pg_database to make sure the target database hasn't gone away.
	 * If there was a concurrent DROP DATABASE, this ensures we will die
	 * cleanly without creating a mess.
	 */
	if (!bootstrap)
	{
		HeapTuple	tuple;

		tuple = FUNC7(dbname);
		if (!FUNC13(tuple) ||
			MyDatabaseId != ((Form_pg_database) FUNC5(tuple))->oid ||
			MyDatabaseTableSpace != ((Form_pg_database) FUNC5(tuple))->dattablespace)
			FUNC48(FATAL,
					(FUNC49(ERRCODE_UNDEFINED_DATABASE),
					 FUNC53("database \"%s\" does not exist", dbname),
					 FUNC51("It seems to have just been dropped or renamed.")));
	}

	/*
	 * Now we should be able to access the database directory safely. Verify
	 * it's there and looks reasonable.
	 */
	fullpath = FUNC6(MyDatabaseId, MyDatabaseTableSpace);

	if (!bootstrap)
	{
		if (FUNC45(fullpath, F_OK) == -1)
		{
			if (errno == ENOENT)
				FUNC48(FATAL,
						(FUNC49(ERRCODE_UNDEFINED_DATABASE),
						 FUNC53("database \"%s\" does not exist",
								dbname),
						 FUNC51("The database subdirectory \"%s\" is missing.",
								   fullpath)));
			else
				FUNC48(FATAL,
						(FUNC50(),
						 FUNC53("could not access directory \"%s\": %m",
								fullpath)));
		}

		FUNC44(fullpath);
	}

	FUNC39(fullpath);

	/*
	 * It's now possible to do real access to the system catalogs.
	 *
	 * Load relcache entries for the system catalogs.  This must create at
	 * least the minimum set of "nailed-in" cache entries.
	 */
	FUNC36();

	/* set up ACL framework (so CheckMyDatabase can check permissions) */
	FUNC55();

	/*
	 * Re-read the pg_database row for our database, check permissions and set
	 * up database-specific GUC settings.  We can't do this until all the
	 * database-access infrastructure is up.  (Also, it wants to know if the
	 * user is a superuser, so the above stuff has to happen first.)
	 */
	if (!bootstrap)
		FUNC1(dbname, am_superuser, override_allow_connections);

	/*
	 * Now process any command-line switches and any additional GUC variable
	 * settings passed in the startup packet.   We couldn't do this before
	 * because we didn't know if client is a superuser.
	 */
	if (MyProcPort != NULL)
		FUNC61(MyProcPort, am_superuser);

	/* Process pg_db_role_setting options */
	FUNC60(MyDatabaseId, FUNC9());

	/* Apply PostAuthDelay as soon as we've read all options */
	if (PostAuthDelay > 0)
		FUNC57(PostAuthDelay * 1000000L);

	/*
	 * Initialize various default states that can't be set up until we've
	 * selected the active user and gotten the right GUC settings.
	 */

	/* set default namespace search path */
	FUNC19();

	/* initialize client encoding */
	FUNC18();

	/* Initialize this backend's session state. */
	FUNC20();

	/* report this backend in the PgBackendStatus array */
	if (!bootstrap)
		FUNC58();

	/* close the transaction we started above */
	if (!bootstrap)
		FUNC2();
}