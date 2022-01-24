#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int XactEvent ;
struct TYPE_4__ {scalar_t__ xact_depth; int changing_xact_state; int have_prep_stmt; int have_error; int /*<<< orphan*/ * conn; } ;
typedef  int /*<<< orphan*/  PGresult ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  TYPE_1__ ConnCacheEntry ;

/* Variables and functions */
 scalar_t__ CONNECTION_OK ; 
 int /*<<< orphan*/  ConnectionHash ; 
 int /*<<< orphan*/  DEBUG3 ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ PQTRANS_ACTIVE ; 
 scalar_t__ PQTRANS_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
#define  XACT_EVENT_ABORT 135 
#define  XACT_EVENT_COMMIT 134 
#define  XACT_EVENT_PARALLEL_ABORT 133 
#define  XACT_EVENT_PARALLEL_COMMIT 132 
#define  XACT_EVENT_PARALLEL_PRE_COMMIT 131 
#define  XACT_EVENT_PREPARE 130 
#define  XACT_EVENT_PRE_COMMIT 129 
#define  XACT_EVENT_PRE_PREPARE 128 
 scalar_t__ cursor_number ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int xact_got_connection ; 

__attribute__((used)) static void
FUNC16(XactEvent event, void *arg)
{
	HASH_SEQ_STATUS scan;
	ConnCacheEntry *entry;

	/* Quick exit if no connections were touched in this transaction. */
	if (!xact_got_connection)
		return;

	/*
	 * Scan all connection cache entries to find open remote transactions, and
	 * close them.
	 */
	FUNC10(&scan, ConnectionHash);
	while ((entry = (ConnCacheEntry *) FUNC11(&scan)))
	{
		PGresult   *res;

		/* Ignore cache entry if no open connection right now */
		if (entry->conn == NULL)
			continue;

		/* If it has an open remote transaction, try to close it */
		if (entry->xact_depth > 0)
		{
			bool		abort_cleanup_failure = false;

			FUNC6(DEBUG3, "closing remote transaction on connection %p",
				 entry->conn);

			switch (event)
			{
				case XACT_EVENT_PARALLEL_PRE_COMMIT:
				case XACT_EVENT_PRE_COMMIT:

					/*
					 * If abort cleanup previously failed for this connection,
					 * we can't issue any more commands against it.
					 */
					FUNC15(entry);

					/* Commit all remote transactions during pre-commit */
					entry->changing_xact_state = true;
					FUNC5(entry->conn, "COMMIT TRANSACTION");
					entry->changing_xact_state = false;

					/*
					 * If there were any errors in subtransactions, and we
					 * made prepared statements, do a DEALLOCATE ALL to make
					 * sure we get rid of all prepared statements. This is
					 * annoying and not terribly bulletproof, but it's
					 * probably not worth trying harder.
					 *
					 * DEALLOCATE ALL only exists in 8.3 and later, so this
					 * constrains how old a server postgres_fdw can
					 * communicate with.  We intentionally ignore errors in
					 * the DEALLOCATE, so that we can hobble along to some
					 * extent with older servers (leaking prepared statements
					 * as we go; but we don't really support update operations
					 * pre-8.3 anyway).
					 */
					if (entry->have_prep_stmt && entry->have_error)
					{
						res = FUNC1(entry->conn, "DEALLOCATE ALL");
						FUNC0(res);
					}
					entry->have_prep_stmt = false;
					entry->have_error = false;
					break;
				case XACT_EVENT_PRE_PREPARE:

					/*
					 * We disallow any remote transactions, since it's not
					 * very reasonable to hold them open until the prepared
					 * transaction is committed.  For the moment, throw error
					 * unconditionally; later we might allow read-only cases.
					 * Note that the error will cause us to come right back
					 * here with event == XACT_EVENT_ABORT, so we'll clean up
					 * the connection state at that point.
					 */
					FUNC7(ERROR,
							(FUNC8(ERRCODE_FEATURE_NOT_SUPPORTED),
							 FUNC9("cannot PREPARE a transaction that has operated on postgres_fdw foreign tables")));
					break;
				case XACT_EVENT_PARALLEL_COMMIT:
				case XACT_EVENT_COMMIT:
				case XACT_EVENT_PREPARE:
					/* Pre-commit should have closed the open transaction */
					FUNC6(ERROR, "missed cleaning up connection during pre-commit");
					break;
				case XACT_EVENT_PARALLEL_ABORT:
				case XACT_EVENT_ABORT:

					/*
					 * Don't try to clean up the connection if we're already
					 * in error recursion trouble.
					 */
					if (FUNC12())
						entry->changing_xact_state = true;

					/*
					 * If connection is already unsalvageable, don't touch it
					 * further.
					 */
					if (entry->changing_xact_state)
						break;

					/*
					 * Mark this connection as in the process of changing
					 * transaction state.
					 */
					entry->changing_xact_state = true;

					/* Assume we might have lost track of prepared statements */
					entry->have_error = true;

					/*
					 * If a command has been submitted to the remote server by
					 * using an asynchronous execution function, the command
					 * might not have yet completed.  Check to see if a
					 * command is still being processed by the remote server,
					 * and if so, request cancellation of the command.
					 */
					if (FUNC3(entry->conn) == PQTRANS_ACTIVE &&
						!FUNC13(entry->conn))
					{
						/* Unable to cancel running query. */
						abort_cleanup_failure = true;
					}
					else if (!FUNC14(entry->conn,
													   "ABORT TRANSACTION",
													   false))
					{
						/* Unable to abort remote transaction. */
						abort_cleanup_failure = true;
					}
					else if (entry->have_prep_stmt && entry->have_error &&
							 !FUNC14(entry->conn,
													   "DEALLOCATE ALL",
													   true))
					{
						/* Trouble clearing prepared statements. */
						abort_cleanup_failure = true;
					}
					else
					{
						entry->have_prep_stmt = false;
						entry->have_error = false;
					}

					/* Disarm changing_xact_state if it all worked. */
					entry->changing_xact_state = abort_cleanup_failure;
					break;
			}
		}

		/* Reset state to show we're out of a transaction */
		entry->xact_depth = 0;

		/*
		 * If the connection isn't in a good idle state, discard it to
		 * recover. Next GetConnection will open a new connection.
		 */
		if (FUNC2(entry->conn) != CONNECTION_OK ||
			FUNC3(entry->conn) != PQTRANS_IDLE ||
			entry->changing_xact_state)
		{
			FUNC6(DEBUG3, "discarding connection %p", entry->conn);
			FUNC4(entry);
		}
	}

	/*
	 * Regardless of the event type, we can now mark ourselves as out of the
	 * transaction.  (Note: if we are here during PRE_COMMIT or PRE_PREPARE,
	 * this saves a useless scan of the hashtable during COMMIT or PREPARE.)
	 */
	xact_got_connection = false;

	/* Also reset cursor numbering for next transaction */
	cursor_number = 0;
}