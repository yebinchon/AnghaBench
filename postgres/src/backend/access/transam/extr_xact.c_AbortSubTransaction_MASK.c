#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* TransactionState ;
struct TYPE_5__ {scalar_t__ state; int /*<<< orphan*/  prevXactReadOnly; int /*<<< orphan*/  nestingLevel; TYPE_1__* parent; int /*<<< orphan*/  subTransactionId; int /*<<< orphan*/  gucNestLevel; scalar_t__ curTransactionOwner; int /*<<< orphan*/  fullTransactionId; scalar_t__ parallelModeLevel; int /*<<< orphan*/  prevSecContext; int /*<<< orphan*/  prevUser; } ;
struct TYPE_4__ {int /*<<< orphan*/  subTransactionId; int /*<<< orphan*/  curTransactionOwner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 TYPE_2__* CurrentTransactionState ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 scalar_t__ FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RESOURCE_RELEASE_AFTER_LOCKS ; 
 int /*<<< orphan*/  RESOURCE_RELEASE_BEFORE_LOCKS ; 
 int /*<<< orphan*/  RESOURCE_RELEASE_LOCKS ; 
 int /*<<< orphan*/  FUNC29 () ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  SUBXACT_EVENT_ABORT_SUB ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 
 scalar_t__ TRANS_ABORT ; 
 scalar_t__ TRANS_INPROGRESS ; 
 int /*<<< orphan*/  FUNC34 (scalar_t__) ; 
 int /*<<< orphan*/  UnBlockSig ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC36 () ; 
 int /*<<< orphan*/  XactReadOnly ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int /*<<< orphan*/  FUNC39 () ; 
 int /*<<< orphan*/  FUNC40 () ; 

__attribute__((used)) static void
FUNC41(void)
{
	TransactionState s = CurrentTransactionState;

	/* Prevent cancel/die interrupt while cleaning up */
	FUNC24();

	/* Make sure we have a valid memory context and resource owner */
	FUNC14();
	FUNC17();

	/*
	 * Release any LW locks we might be holding as quickly as possible.
	 * (Regular locks, however, must be held till we finish aborting.)
	 * Releasing LW locks is critical since we might try to grab them again
	 * while cleaning up!
	 *
	 * FIXME This may be incorrect --- Are there some locks we should keep?
	 * Buffer locks, for example?  I don't think so but I'm not sure.
	 */
	FUNC26();

	FUNC39();
	FUNC38();
	FUNC0();
	FUNC35();

	/* Reset WAL record construction state */
	FUNC36();

	/* Cancel condition variable sleep */
	FUNC22();

	/*
	 * Also clean up any open wait for lock, since the lock manager will choke
	 * if we try to wait for another lock before doing this.
	 */
	FUNC27();

	/*
	 * If any timeout events are still active, make sure the timeout interrupt
	 * is scheduled.  This covers possible loss of a timeout interrupt due to
	 * longjmp'ing out of the SIGINT handler (see notes in handle_sig_alarm).
	 * We delay this till after LockErrorCleanup so that we don't uselessly
	 * reschedule lock or deadlock check timeouts.
	 */
	FUNC40();

	/*
	 * Re-enable signals, in case we got here by longjmp'ing out of a signal
	 * handler.  We do this fairly early in the sequence so that the timeout
	 * infrastructure will be functional if needed while aborting.
	 */
	FUNC28(&UnBlockSig);

	/*
	 * check the current transaction state
	 */
	FUNC33("AbortSubTransaction");

	if (s->state != TRANS_INPROGRESS)
		FUNC37(WARNING, "AbortSubTransaction while in %s state",
			 FUNC34(s->state));

	s->state = TRANS_ABORT;

	/*
	 * Reset user ID which might have been changed transiently.  (See notes in
	 * AbortTransaction.)
	 */
	FUNC32(s->prevUser, s->prevSecContext);

	/* Exit from parallel mode, if necessary. */
	if (FUNC25())
	{
		FUNC8(false, s->subTransactionId);
		s->parallelModeLevel = 0;
	}

	/*
	 * We can skip all this stuff if the subxact failed before creating a
	 * ResourceOwner...
	 */
	if (s->curTransactionOwner)
	{
		FUNC1(false);
		FUNC16(s->subTransactionId,
						   s->parent->subTransactionId,
						   s->curTransactionOwner,
						   s->parent->curTransactionOwner);
		FUNC6(false, s->subTransactionId,
								s->parent->subTransactionId);
		FUNC15();

		/* Advertise the fact that we aborted in pg_xact. */
		(void) FUNC30(true);

		/* Post-abort cleanup */
		if (FUNC23(s->fullTransactionId))
			FUNC19();

		FUNC21(SUBXACT_EVENT_ABORT_SUB, s->subTransactionId,
							 s->parent->subTransactionId);

		FUNC31(s->curTransactionOwner,
							 RESOURCE_RELEASE_BEFORE_LOCKS,
							 false, false);
		FUNC10(false, s->subTransactionId,
								  s->parent->subTransactionId);
		FUNC5(false);
		FUNC31(s->curTransactionOwner,
							 RESOURCE_RELEASE_LOCKS,
							 false, false);
		FUNC31(s->curTransactionOwner,
							 RESOURCE_RELEASE_AFTER_LOCKS,
							 false, false);
		FUNC20();

		FUNC13(false, s->gucNestLevel);
		FUNC11(false, s->subTransactionId);
		FUNC12(false, s->subTransactionId,
									  s->parent->subTransactionId);
		FUNC7(false, s->subTransactionId,
							  s->parent->subTransactionId);
		FUNC3(false, s->subTransactionId,
						  s->parent->subTransactionId);
		FUNC4(false, s->nestingLevel);
		FUNC9(false, s->nestingLevel);
		FUNC18(s->nestingLevel);
		FUNC2(false, s->nestingLevel);
	}

	/*
	 * Restore the upper transaction's read-only state, too.  This should be
	 * redundant with GUC's cleanup but we may as well do it for consistency
	 * with the commit case.
	 */
	XactReadOnly = s->prevXactReadOnly;

	FUNC29();
}