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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ClientAuthInProgress ; 
 scalar_t__ ClientConnectionLost ; 
 scalar_t__ CritSectionCount ; 
 int /*<<< orphan*/  DEBUG1 ; 
 scalar_t__ DestNone ; 
 scalar_t__ DestRemote ; 
 scalar_t__ DoingCommandRead ; 
 int /*<<< orphan*/  ERRCODE_ADMIN_SHUTDOWN ; 
 int /*<<< orphan*/  ERRCODE_CONNECTION_FAILURE ; 
 int /*<<< orphan*/  ERRCODE_DATABASE_DROPPED ; 
 int /*<<< orphan*/  ERRCODE_IDLE_IN_TRANSACTION_SESSION_TIMEOUT ; 
 int /*<<< orphan*/  ERRCODE_LOCK_NOT_AVAILABLE ; 
 int /*<<< orphan*/  ERRCODE_QUERY_CANCELED ; 
 int /*<<< orphan*/  ERRCODE_T_R_SERIALIZATION_FAILURE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ IdleInTransactionSessionTimeout ; 
 int IdleInTransactionSessionTimeoutPending ; 
 scalar_t__ InterruptHoldoffCount ; 
 int InterruptPending ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  LOCK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ PROCSIG_RECOVERY_CONFLICT_DATABASE ; 
 scalar_t__ ParallelMessagePending ; 
 int ProcDiePending ; 
 scalar_t__ QueryCancelHoldoffCount ; 
 int QueryCancelPending ; 
 int RecoveryConflictPending ; 
 scalar_t__ RecoveryConflictReason ; 
 scalar_t__ RecoveryConflictRetryable ; 
 int /*<<< orphan*/  STATEMENT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 scalar_t__ whereToSendOutput ; 

void
FUNC15(void)
{
	/* OK to accept any interrupts now? */
	if (InterruptHoldoffCount != 0 || CritSectionCount != 0)
		return;
	InterruptPending = false;

	if (ProcDiePending)
	{
		ProcDiePending = false;
		QueryCancelPending = false; /* ProcDie trumps QueryCancel */
		FUNC5();
		/* As in quickdie, don't risk sending to client during auth */
		if (ClientAuthInProgress && whereToSendOutput == DestRemote)
			whereToSendOutput = DestNone;
		if (ClientAuthInProgress)
			FUNC6(FATAL,
					(FUNC7(ERRCODE_QUERY_CANCELED),
					 FUNC10("canceling authentication due to timeout")));
		else if (FUNC2())
			FUNC6(FATAL,
					(FUNC7(ERRCODE_ADMIN_SHUTDOWN),
					 FUNC10("terminating autovacuum process due to administrator command")));
		else if (FUNC4())
			FUNC6(FATAL,
					(FUNC7(ERRCODE_ADMIN_SHUTDOWN),
					 FUNC10("terminating logical replication worker due to administrator command")));
		else if (FUNC3())
		{
			FUNC6(DEBUG1,
					(FUNC10("logical replication launcher shutting down")));

			/*
			 * The logical replication launcher can be stopped at any time.
			 * Use exit status 1 so the background worker is restarted.
			 */
			FUNC14(1);
		}
		else if (RecoveryConflictPending && RecoveryConflictRetryable)
		{
			FUNC13(RecoveryConflictReason);
			FUNC6(FATAL,
					(FUNC7(ERRCODE_T_R_SERIALIZATION_FAILURE),
					 FUNC10("terminating connection due to conflict with recovery"),
					 FUNC8()));
		}
		else if (RecoveryConflictPending)
		{
			/* Currently there is only one non-retryable recovery conflict */
			FUNC0(RecoveryConflictReason == PROCSIG_RECOVERY_CONFLICT_DATABASE);
			FUNC13(RecoveryConflictReason);
			FUNC6(FATAL,
					(FUNC7(ERRCODE_DATABASE_DROPPED),
					 FUNC10("terminating connection due to conflict with recovery"),
					 FUNC8()));
		}
		else
			FUNC6(FATAL,
					(FUNC7(ERRCODE_ADMIN_SHUTDOWN),
					 FUNC10("terminating connection due to administrator command")));
	}
	if (ClientConnectionLost)
	{
		QueryCancelPending = false; /* lost connection trumps QueryCancel */
		FUNC5();
		/* don't send to client, we already know the connection to be dead. */
		whereToSendOutput = DestNone;
		FUNC6(FATAL,
				(FUNC7(ERRCODE_CONNECTION_FAILURE),
				 FUNC10("connection to client lost")));
	}

	/*
	 * If a recovery conflict happens while we are waiting for input from the
	 * client, the client is presumably just sitting idle in a transaction,
	 * preventing recovery from making progress.  Terminate the connection to
	 * dislodge it.
	 */
	if (RecoveryConflictPending && DoingCommandRead)
	{
		QueryCancelPending = false; /* this trumps QueryCancel */
		RecoveryConflictPending = false;
		FUNC5();
		FUNC13(RecoveryConflictReason);
		FUNC6(FATAL,
				(FUNC7(ERRCODE_T_R_SERIALIZATION_FAILURE),
				 FUNC10("terminating connection due to conflict with recovery"),
				 FUNC8(),
				 FUNC9("In a moment you should be able to reconnect to the"
						 " database and repeat your command.")));
	}

	/*
	 * Don't allow query cancel interrupts while reading input from the
	 * client, because we might lose sync in the FE/BE protocol.  (Die
	 * interrupts are OK, because we won't read any further messages from the
	 * client in that case.)
	 */
	if (QueryCancelPending && QueryCancelHoldoffCount != 0)
	{
		/*
		 * Re-arm InterruptPending so that we process the cancel request as
		 * soon as we're done reading the message.
		 */
		InterruptPending = true;
	}
	else if (QueryCancelPending)
	{
		bool		lock_timeout_occurred;
		bool		stmt_timeout_occurred;

		QueryCancelPending = false;

		/*
		 * If LOCK_TIMEOUT and STATEMENT_TIMEOUT indicators are both set, we
		 * need to clear both, so always fetch both.
		 */
		lock_timeout_occurred = FUNC12(LOCK_TIMEOUT, true);
		stmt_timeout_occurred = FUNC12(STATEMENT_TIMEOUT, true);

		/*
		 * If both were set, we want to report whichever timeout completed
		 * earlier; this ensures consistent behavior if the machine is slow
		 * enough that the second timeout triggers before we get here.  A tie
		 * is arbitrarily broken in favor of reporting a lock timeout.
		 */
		if (lock_timeout_occurred && stmt_timeout_occurred &&
			FUNC11(STATEMENT_TIMEOUT) < FUNC11(LOCK_TIMEOUT))
			lock_timeout_occurred = false;	/* report stmt timeout */

		if (lock_timeout_occurred)
		{
			FUNC5();
			FUNC6(ERROR,
					(FUNC7(ERRCODE_LOCK_NOT_AVAILABLE),
					 FUNC10("canceling statement due to lock timeout")));
		}
		if (stmt_timeout_occurred)
		{
			FUNC5();
			FUNC6(ERROR,
					(FUNC7(ERRCODE_QUERY_CANCELED),
					 FUNC10("canceling statement due to statement timeout")));
		}
		if (FUNC2())
		{
			FUNC5();
			FUNC6(ERROR,
					(FUNC7(ERRCODE_QUERY_CANCELED),
					 FUNC10("canceling autovacuum task")));
		}
		if (RecoveryConflictPending)
		{
			RecoveryConflictPending = false;
			FUNC5();
			FUNC13(RecoveryConflictReason);
			FUNC6(ERROR,
					(FUNC7(ERRCODE_T_R_SERIALIZATION_FAILURE),
					 FUNC10("canceling statement due to conflict with recovery"),
					 FUNC8()));
		}

		/*
		 * If we are reading a command from the client, just ignore the cancel
		 * request --- sending an extra error message won't accomplish
		 * anything.  Otherwise, go ahead and throw the error.
		 */
		if (!DoingCommandRead)
		{
			FUNC5();
			FUNC6(ERROR,
					(FUNC7(ERRCODE_QUERY_CANCELED),
					 FUNC10("canceling statement due to user request")));
		}
	}

	if (IdleInTransactionSessionTimeoutPending)
	{
		/* Has the timeout setting changed since last we looked? */
		if (IdleInTransactionSessionTimeout > 0)
			FUNC6(FATAL,
					(FUNC7(ERRCODE_IDLE_IN_TRANSACTION_SESSION_TIMEOUT),
					 FUNC10("terminating connection due to idle-in-transaction timeout")));
		else
			IdleInTransactionSessionTimeoutPending = false;

	}

	if (ParallelMessagePending)
		FUNC1();
}