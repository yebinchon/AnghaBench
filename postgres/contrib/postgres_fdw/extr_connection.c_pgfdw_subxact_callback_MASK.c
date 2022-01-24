#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sql ;
struct TYPE_3__ {int xact_depth; int changing_xact_state; int have_error; int /*<<< orphan*/ * conn; } ;
typedef  scalar_t__ SubXactEvent ;
typedef  int /*<<< orphan*/  SubTransactionId ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;
typedef  TYPE_1__ ConnCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  ConnectionHash ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 () ; 
 scalar_t__ PQTRANS_ACTIVE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ SUBXACT_EVENT_ABORT_SUB ; 
 scalar_t__ SUBXACT_EVENT_PRE_COMMIT_SUB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/  xact_got_connection ; 

__attribute__((used)) static void
FUNC11(SubXactEvent event, SubTransactionId mySubid,
					   SubTransactionId parentSubid, void *arg)
{
	HASH_SEQ_STATUS scan;
	ConnCacheEntry *entry;
	int			curlevel;

	/* Nothing to do at subxact start, nor after commit. */
	if (!(event == SUBXACT_EVENT_PRE_COMMIT_SUB ||
		  event == SUBXACT_EVENT_ABORT_SUB))
		return;

	/* Quick exit if no connections were touched in this transaction. */
	if (!xact_got_connection)
		return;

	/*
	 * Scan all connection cache entries to find open remote subtransactions
	 * of the current level, and close them.
	 */
	curlevel = FUNC0();
	FUNC4(&scan, ConnectionHash);
	while ((entry = (ConnCacheEntry *) FUNC5(&scan)))
	{
		char		sql[100];

		/*
		 * We only care about connections with open remote subtransactions of
		 * the current level.
		 */
		if (entry->conn == NULL || entry->xact_depth < curlevel)
			continue;

		if (entry->xact_depth > curlevel)
			FUNC3(ERROR, "missed cleaning up remote subtransaction at level %d",
				 entry->xact_depth);

		if (event == SUBXACT_EVENT_PRE_COMMIT_SUB)
		{
			/*
			 * If abort cleanup previously failed for this connection, we
			 * can't issue any more commands against it.
			 */
			FUNC9(entry);

			/* Commit all remote subtransactions during pre-commit */
			FUNC10(sql, sizeof(sql), "RELEASE SAVEPOINT s%d", curlevel);
			entry->changing_xact_state = true;
			FUNC2(entry->conn, sql);
			entry->changing_xact_state = false;
		}
		else if (FUNC6())
		{
			/*
			 * Don't try to clean up the connection if we're already in error
			 * recursion trouble.
			 */
			entry->changing_xact_state = true;
		}
		else if (!entry->changing_xact_state)
		{
			bool		abort_cleanup_failure = false;

			/* Remember that abort cleanup is in progress. */
			entry->changing_xact_state = true;

			/* Assume we might have lost track of prepared statements */
			entry->have_error = true;

			/*
			 * If a command has been submitted to the remote server by using
			 * an asynchronous execution function, the command might not have
			 * yet completed.  Check to see if a command is still being
			 * processed by the remote server, and if so, request cancellation
			 * of the command.
			 */
			if (FUNC1(entry->conn) == PQTRANS_ACTIVE &&
				!FUNC7(entry->conn))
				abort_cleanup_failure = true;
			else
			{
				/* Rollback all remote subtransactions during abort */
				FUNC10(sql, sizeof(sql),
						 "ROLLBACK TO SAVEPOINT s%d; RELEASE SAVEPOINT s%d",
						 curlevel, curlevel);
				if (!FUNC8(entry->conn, sql, false))
					abort_cleanup_failure = true;
			}

			/* Disarm changing_xact_state if it all worked. */
			entry->changing_xact_state = abort_cleanup_failure;
		}

		/* OK, we're outta that level of subtransaction */
		entry->xact_depth--;
	}
}