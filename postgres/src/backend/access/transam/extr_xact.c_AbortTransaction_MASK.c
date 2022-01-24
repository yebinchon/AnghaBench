#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TransactionState ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_6__ {int /*<<< orphan*/  lxid; } ;
struct TYPE_5__ {scalar_t__ blockState; scalar_t__ state; scalar_t__ parallelModeLevel; int /*<<< orphan*/  prevSecContext; int /*<<< orphan*/  prevUser; int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int,int) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int,int) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 TYPE_1__* CurrentTransactionState ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 scalar_t__ FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 () ; 
 TYPE_2__* MyProc ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESOURCE_RELEASE_AFTER_LOCKS ; 
 int /*<<< orphan*/  RESOURCE_RELEASE_BEFORE_LOCKS ; 
 int /*<<< orphan*/  RESOURCE_RELEASE_LOCKS ; 
 int /*<<< orphan*/  FUNC34 () ; 
 int /*<<< orphan*/  FUNC35 (int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TBLOCK_PARALLEL_INPROGRESS ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRANS_ABORT ; 
 scalar_t__ TRANS_INPROGRESS ; 
 scalar_t__ TRANS_PREPARE ; 
 int /*<<< orphan*/ * TopTransactionResourceOwner ; 
 int /*<<< orphan*/  FUNC39 (scalar_t__) ; 
 int /*<<< orphan*/  UnBlockSig ; 
 int /*<<< orphan*/  FUNC40 () ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  XACT_EVENT_ABORT ; 
 int /*<<< orphan*/  XACT_EVENT_PARALLEL_ABORT ; 
 int /*<<< orphan*/  FUNC41 () ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XactLastRecEnd ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC44 () ; 
 int /*<<< orphan*/  FUNC45 () ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 () ; 
 int /*<<< orphan*/  FUNC48 (int) ; 

__attribute__((used)) static void
FUNC49(void)
{
	TransactionState s = CurrentTransactionState;
	TransactionId latestXid;
	bool		is_parallel_worker;

	/* Prevent cancel/die interrupt while cleaning up */
	FUNC28();

	/* Make sure we have a valid memory context and resource owner */
	FUNC3();
	FUNC6();

	/*
	 * Release any LW locks we might be holding as quickly as possible.
	 * (Regular locks, however, must be held till we finish aborting.)
	 * Releasing LW locks is critical since we might try to grab them again
	 * while cleaning up!
	 */
	FUNC30();

	/* Clear wait information and command progress indicator */
	FUNC45();
	FUNC44();

	/* Clean up buffer I/O and buffer context locks, too */
	FUNC0();
	FUNC40();

	/* Reset WAL record construction state */
	FUNC41();

	/* Cancel condition variable sleep */
	FUNC27();

	/*
	 * Also clean up any open wait for lock, since the lock manager will choke
	 * if we try to wait for another lock before doing this.
	 */
	FUNC31();

	/*
	 * If any timeout events are still active, make sure the timeout interrupt
	 * is scheduled.  This covers possible loss of a timeout interrupt due to
	 * longjmp'ing out of the SIGINT handler (see notes in handle_sig_alarm).
	 * We delay this till after LockErrorCleanup so that we don't uselessly
	 * reschedule lock or deadlock check timeouts.
	 */
	FUNC47();

	/*
	 * Re-enable signals, in case we got here by longjmp'ing out of a signal
	 * handler.  We do this fairly early in the sequence so that the timeout
	 * infrastructure will be functional if needed while aborting.
	 */
	FUNC32(&UnBlockSig);

	/*
	 * check the current transaction state
	 */
	is_parallel_worker = (s->blockState == TBLOCK_PARALLEL_INPROGRESS);
	if (s->state != TRANS_INPROGRESS && s->state != TRANS_PREPARE)
		FUNC43(WARNING, "AbortTransaction while in %s state",
			 FUNC39(s->state));
	FUNC2(s->parent == NULL);

	/*
	 * set the current transaction state information appropriately during the
	 * abort processing
	 */
	s->state = TRANS_ABORT;

	/*
	 * Reset user ID which might have been changed transiently.  We need this
	 * to clean up in case control escaped out of a SECURITY DEFINER function
	 * or other local change of CurrentUserId; therefore, the prior value of
	 * SecurityRestrictionContext also needs to be restored.
	 *
	 * (Note: it is not necessary to restore session authorization or role
	 * settings here because those can only be changed via GUC, and GUC will
	 * take care of rolling them back if need be.)
	 */
	FUNC37(s->prevUser, s->prevSecContext);

	/* If in parallel mode, clean up workers and exit parallel mode. */
	if (FUNC29())
	{
		FUNC19(false);
		s->parallelModeLevel = 0;
	}

	/*
	 * do abort processing
	 */
	FUNC1(false); /* 'false' means it's abort */
	FUNC5();
	FUNC16(false);
	FUNC4();
	FUNC22(false, is_parallel_worker);
	FUNC7();

	/*
	 * Advertise the fact that we aborted in pg_xact (assuming that we got as
	 * far as assigning an XID to advertise).  But if we're inside a parallel
	 * worker, skip this; the user backend must be the one to write the abort
	 * record.
	 */
	if (!is_parallel_worker)
		latestXid = FUNC35(false);
	else
	{
		latestXid = InvalidTransactionId;

		/*
		 * Since the parallel master won't get our value of XactLastRecEnd in
		 * this case, we nudge WAL-writer ourselves in this case.  See related
		 * comments in RecordTransactionAbort for why this matters.
		 */
		FUNC42(XactLastRecEnd);
	}

	FUNC38(MyProc->lxid);

	/*
	 * Let others know about no transaction in progress by me. Note that this
	 * must be done _before_ releasing locks we hold and _after_
	 * RecordTransactionAbort.
	 */
	FUNC33(MyProc, latestXid);

	/*
	 * Post-abort cleanup.  See notes in CommitTransaction() concerning
	 * ordering.  We can skip all of it if the transaction failed before
	 * creating a resource owner.
	 */
	if (TopTransactionResourceOwner != NULL)
	{
		if (is_parallel_worker)
			FUNC26(XACT_EVENT_PARALLEL_ABORT);
		else
			FUNC26(XACT_EVENT_ABORT);

		FUNC36(TopTransactionResourceOwner,
							 RESOURCE_RELEASE_BEFORE_LOCKS,
							 false, true);
		FUNC9(false);
		FUNC21(false);
		FUNC15(false);
		FUNC17();
		FUNC36(TopTransactionResourceOwner,
							 RESOURCE_RELEASE_LOCKS,
							 false, true);
		FUNC36(TopTransactionResourceOwner,
							 RESOURCE_RELEASE_AFTER_LOCKS,
							 false, true);
		FUNC48(false);

		FUNC13(false, 1);
		FUNC24(false);
		FUNC11();
		FUNC25(false);
		FUNC18(false, is_parallel_worker);
		FUNC23();
		FUNC12(false);
		FUNC10();
		FUNC14(false);
		FUNC20(false, is_parallel_worker);
		FUNC8(false);
		FUNC46(0);
	}

	/*
	 * State remains TRANS_ABORT until CleanupTransaction().
	 */
	FUNC34();
}