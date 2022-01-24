#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {char* use_role; int remoteVersion; int numWorkers; int /*<<< orphan*/ * sync_snapshot_id; scalar_t__ isStandby; int /*<<< orphan*/  std_strings; int /*<<< orphan*/  encoding; TYPE_2__* dopt; } ;
struct TYPE_15__ {int /*<<< orphan*/  no_synchronized_snapshots; scalar_t__ serializable_deferrable; scalar_t__ enable_row_security; } ;
struct TYPE_14__ {char* data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  TYPE_2__ DumpOptions ;
typedef  TYPE_3__ Archive ;

/* Variables and functions */
 int /*<<< orphan*/  ALWAYS_SECURE_SEARCH_PATH_SQL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  extra_float_digits ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_3__*) ; 
 scalar_t__ have_extra_float_digits ; 
 void* FUNC15 (char const*) ; 
 scalar_t__ quote_all_identifiers ; 
 scalar_t__ FUNC16 (char const*,char*) ; 

__attribute__((used)) static void
FUNC17(Archive *AH, const char *dumpencoding,
				 const char *dumpsnapshot, char *use_role)
{
	DumpOptions *dopt = AH->dopt;
	PGconn	   *conn = FUNC2(AH);
	const char *std_strings;

	FUNC3(FUNC0(AH, ALWAYS_SECURE_SEARCH_PATH_SQL));

	/*
	 * Set the client encoding if requested.
	 */
	if (dumpencoding)
	{
		if (FUNC6(conn, dumpencoding) < 0)
			FUNC12("invalid client encoding \"%s\" specified",
				  dumpencoding);
	}

	/*
	 * Get the active encoding and the standard_conforming_strings setting, so
	 * we know how to escape strings.
	 */
	AH->encoding = FUNC4(conn);

	std_strings = FUNC5(conn, "standard_conforming_strings");
	AH->std_strings = (std_strings && FUNC16(std_strings, "on") == 0);

	/*
	 * Set the role if requested.  In a parallel dump worker, we'll be passed
	 * use_role == NULL, but AH->use_role is already set (if user specified it
	 * originally) and we should use that.
	 */
	if (!use_role && AH->use_role)
		use_role = AH->use_role;

	/* Set the role if requested */
	if (use_role && AH->remoteVersion >= 80100)
	{
		PQExpBuffer query = FUNC10();

		FUNC7(query, "SET ROLE %s", FUNC13(use_role));
		FUNC1(AH, query->data);
		FUNC11(query);

		/* save it for possible later use by parallel workers */
		if (!AH->use_role)
			AH->use_role = FUNC15(use_role);
	}

	/* Set the datestyle to ISO to ensure the dump's portability */
	FUNC1(AH, "SET DATESTYLE = ISO");

	/* Likewise, avoid using sql_standard intervalstyle */
	if (AH->remoteVersion >= 80400)
		FUNC1(AH, "SET INTERVALSTYLE = POSTGRES");

	/*
	 * Use an explicitly specified extra_float_digits if it has been provided.
	 * Otherwise, set extra_float_digits so that we can dump float data
	 * exactly (given correctly implemented float I/O code, anyway).
	 */
	if (have_extra_float_digits)
	{
		PQExpBuffer q = FUNC10();

		FUNC7(q, "SET extra_float_digits TO %d",
						  extra_float_digits);
		FUNC1(AH, q->data);
		FUNC11(q);
	}
	else if (AH->remoteVersion >= 90000)
		FUNC1(AH, "SET extra_float_digits TO 3");
	else
		FUNC1(AH, "SET extra_float_digits TO 2");

	/*
	 * If synchronized scanning is supported, disable it, to prevent
	 * unpredictable changes in row ordering across a dump and reload.
	 */
	if (AH->remoteVersion >= 80300)
		FUNC1(AH, "SET synchronize_seqscans TO off");

	/*
	 * Disable timeouts if supported.
	 */
	FUNC1(AH, "SET statement_timeout = 0");
	if (AH->remoteVersion >= 90300)
		FUNC1(AH, "SET lock_timeout = 0");
	if (AH->remoteVersion >= 90600)
		FUNC1(AH, "SET idle_in_transaction_session_timeout = 0");

	/*
	 * Quote all identifiers, if requested.
	 */
	if (quote_all_identifiers && AH->remoteVersion >= 90100)
		FUNC1(AH, "SET quote_all_identifiers = true");

	/*
	 * Adjust row-security mode, if supported.
	 */
	if (AH->remoteVersion >= 90500)
	{
		if (dopt->enable_row_security)
			FUNC1(AH, "SET row_security = on");
		else
			FUNC1(AH, "SET row_security = off");
	}

	/*
	 * Start transaction-snapshot mode transaction to dump consistent data.
	 */
	FUNC1(AH, "BEGIN");
	if (AH->remoteVersion >= 90100)
	{
		/*
		 * To support the combination of serializable_deferrable with the jobs
		 * option we use REPEATABLE READ for the worker connections that are
		 * passed a snapshot.  As long as the snapshot is acquired in a
		 * SERIALIZABLE, READ ONLY, DEFERRABLE transaction, its use within a
		 * REPEATABLE READ transaction provides the appropriate integrity
		 * guarantees.  This is a kluge, but safe for back-patching.
		 */
		if (dopt->serializable_deferrable && AH->sync_snapshot_id == NULL)
			FUNC1(AH,
								"SET TRANSACTION ISOLATION LEVEL "
								"SERIALIZABLE, READ ONLY, DEFERRABLE");
		else
			FUNC1(AH,
								"SET TRANSACTION ISOLATION LEVEL "
								"REPEATABLE READ, READ ONLY");
	}
	else
	{
		FUNC1(AH,
							"SET TRANSACTION ISOLATION LEVEL "
							"SERIALIZABLE, READ ONLY");
	}

	/*
	 * If user specified a snapshot to use, select that.  In a parallel dump
	 * worker, we'll be passed dumpsnapshot == NULL, but AH->sync_snapshot_id
	 * is already set (if the server can handle it) and we should use that.
	 */
	if (dumpsnapshot)
		AH->sync_snapshot_id = FUNC15(dumpsnapshot);

	if (AH->sync_snapshot_id)
	{
		PQExpBuffer query = FUNC10();

		FUNC8(query, "SET TRANSACTION SNAPSHOT ");
		FUNC9(query, AH->sync_snapshot_id, conn);
		FUNC1(AH, query->data);
		FUNC11(query);
	}
	else if (AH->numWorkers > 1 &&
			 AH->remoteVersion >= 90200 &&
			 !dopt->no_synchronized_snapshots)
	{
		if (AH->isStandby && AH->remoteVersion < 100000)
			FUNC12("Synchronized snapshots on standby servers are not supported by this server version.\n"
				  "Run with --no-synchronized-snapshots instead if you do not need\n"
				  "synchronized snapshots.");


		AH->sync_snapshot_id = FUNC14(AH);
	}
}