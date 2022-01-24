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
typedef  TYPE_1__* TransactionState ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  TimestampTz ;
struct TYPE_3__ {scalar_t__ state; scalar_t__ maxChildXids; scalar_t__ nChildXids; int /*<<< orphan*/ * childXids; scalar_t__ gucNestLevel; scalar_t__ nestingLevel; int /*<<< orphan*/  subTransactionId; void* fullTransactionId; int /*<<< orphan*/ * curTransactionOwner; int /*<<< orphan*/ * parent; } ;
typedef  int /*<<< orphan*/  GlobalTransaction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * CurTransactionResourceOwner ; 
 int /*<<< orphan*/ * CurrentResourceOwner ; 
 TYPE_1__* CurrentTransactionState ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 () ; 
 void* InvalidFullTransactionId ; 
 int /*<<< orphan*/  InvalidSubTransactionId ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  MyProc ; 
 int MyXactFlags ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 () ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 () ; 
 int /*<<< orphan*/  FUNC38 () ; 
 int /*<<< orphan*/  FUNC39 () ; 
 int /*<<< orphan*/  FUNC40 (int) ; 
 int /*<<< orphan*/  FUNC41 () ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RESOURCE_RELEASE_AFTER_LOCKS ; 
 int /*<<< orphan*/  RESOURCE_RELEASE_BEFORE_LOCKS ; 
 int /*<<< orphan*/  RESOURCE_RELEASE_LOCKS ; 
 int /*<<< orphan*/  FUNC43 () ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC45 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC46 (char*) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRANS_DEFAULT ; 
 scalar_t__ TRANS_INPROGRESS ; 
 scalar_t__ TRANS_PREPARE ; 
 int /*<<< orphan*/ * TopTransactionResourceOwner ; 
 int /*<<< orphan*/  FUNC48 (scalar_t__) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  XACT_EVENT_PREPARE ; 
 int /*<<< orphan*/  XACT_EVENT_PRE_PREPARE ; 
 int XACT_FLAGS_ACCESSEDTEMPNAMESPACE ; 
 scalar_t__ FUNC49 () ; 
 scalar_t__ XactLastRecEnd ; 
 scalar_t__ FUNC50 () ; 
 void* XactTopFullTransactionId ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC52 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC54 (char*) ; 
 scalar_t__ nParallelCurrentXids ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * prepareGID ; 

__attribute__((used)) static void
FUNC56(void)
{
	TransactionState s = CurrentTransactionState;
	TransactionId xid = FUNC27();
	GlobalTransaction gxact;
	TimestampTz prepared_at;

	FUNC2(!FUNC30());

	FUNC46("PrepareTransaction");

	/*
	 * check the current transaction state
	 */
	if (s->state != TRANS_INPROGRESS)
		FUNC51(WARNING, "PrepareTransaction while in %s state",
			 FUNC48(s->state));
	FUNC2(s->parent == NULL);

	/*
	 * Do pre-commit processing that involves calling user-defined code, such
	 * as triggers.  Since closing cursors could queue trigger actions,
	 * triggers could open cursors, etc, we have to keep looping until there's
	 * nothing left to do.
	 */
	for (;;)
	{
		/*
		 * Fire all currently pending deferred triggers.
		 */
		FUNC1();

		/*
		 * Close open portals (converting holdable ones into static portals).
		 * If there weren't any, we are done ... otherwise loop back to check
		 * if they queued deferred triggers.  Lather, rinse, repeat.
		 */
		if (!FUNC40(true))
			break;
	}

	FUNC24(XACT_EVENT_PRE_PREPARE);

	/*
	 * The remaining actions cannot call any user-defined code, so it's safe
	 * to start shutting down within-transaction services.  But note that most
	 * of this stuff could still throw an error, which would switch us into
	 * the transaction-abort path.
	 */

	/* Shut down the deferred-trigger manager */
	FUNC0(true);

	/*
	 * Let ON COMMIT management do its thing (must happen after closing
	 * cursors, to avoid dangling-reference problems)
	 */
	FUNC41();

	/* close large objects before lower-level cleanup */
	FUNC10(true);

	/*
	 * Mark serializable transaction as complete for predicate locking
	 * purposes.  This should be done as late as we can put it and still allow
	 * errors to be raised for failure patterns found at commit.
	 */
	FUNC39();

	/* NOTIFY will be handled below */

	/*
	 * Don't allow PREPARE TRANSACTION if we've accessed a temporary table in
	 * this transaction.  Having the prepared xact hold locks on another
	 * backend's temp table seems a bad idea --- for instance it would prevent
	 * the backend from exiting.  There are other problems too, such as how to
	 * clean up the source backend's local buffers and ON COMMIT state if the
	 * prepared xact includes a DROP of a temp table.
	 *
	 * Other objects types, like functions, operators or extensions, share the
	 * same restriction as they should not be created, locked or dropped as
	 * this can mess up with this session or even a follow-up session trying
	 * to use the same temporary namespace.
	 *
	 * We must check this after executing any ON COMMIT actions, because they
	 * might still access a temp relation.
	 *
	 * XXX In principle this could be relaxed to allow some useful special
	 * cases, such as a temp table created and dropped all within the
	 * transaction.  That seems to require much more bookkeeping though.
	 */
	if ((MyXactFlags & XACT_FLAGS_ACCESSEDTEMPNAMESPACE))
		FUNC52(ERROR,
				(FUNC53(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC54("cannot PREPARE a transaction that has operated on temporary objects")));

	/*
	 * Likewise, don't allow PREPARE after pg_export_snapshot.  This could be
	 * supported if we added cleanup logic to twophase.c, but for now it
	 * doesn't seem worth the trouble.
	 */
	if (FUNC49())
		FUNC52(ERROR,
				(FUNC53(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC54("cannot PREPARE a transaction that has exported snapshots")));

	/*
	 * Don't allow PREPARE but for transaction that has/might kill logical
	 * replication workers.
	 */
	if (FUNC50())
		FUNC52(ERROR,
				(FUNC53(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC54("cannot PREPARE a transaction that has manipulated logical replication workers")));

	/* Prevent cancel/die interrupt while cleaning up */
	FUNC29();

	/*
	 * set the current transaction state information appropriately during
	 * prepare processing
	 */
	s->state = TRANS_PREPARE;

	prepared_at = FUNC26();

	/* Tell bufmgr and smgr to prepare for commit */
	FUNC23();

	/*
	 * Reserve the GID for this transaction. This could fail if the requested
	 * GID is invalid or already in use.
	 */
	gxact = FUNC31(xid, prepareGID, prepared_at,
							FUNC28(), MyDatabaseId);
	prepareGID = NULL;

	/*
	 * Collect data for the 2PC state file.  Note that in general, no actual
	 * state change should happen in the called modules during this step,
	 * since it's still possible to fail before commit, and in that case we
	 * want transaction abort to be able to clean up.  (In particular, the
	 * AtPrepare routines may error out if they find cases they cannot
	 * handle.)  State cleanup should happen in the PostPrepare routines
	 * below.  However, some modules can go ahead and clear state here because
	 * they wouldn't do anything with it during abort anyway.
	 *
	 * Note: because the 2PC state file records will be replayed in the same
	 * order they are made, the order of these calls has to match the order in
	 * which we want things to happen during COMMIT PREPARED or ROLLBACK
	 * PREPARED; in particular, pay attention to whether things should happen
	 * before or after releasing the transaction's locks.
	 */
	FUNC47(gxact);

	FUNC19();
	FUNC17();
	FUNC21();
	FUNC20();
	FUNC18();
	FUNC22();

	/*
	 * Here is where we really truly prepare.
	 *
	 * We have to record transaction prepares even if we didn't make any
	 * updates, because the transaction manager might get confused if we lose
	 * a global transaction.
	 */
	FUNC25(gxact);

	/*
	 * Now we clean up backend-internal state and release internal resources.
	 */

	/* Reset XactLastRecEnd until the next transaction writes something */
	XactLastRecEnd = 0;

	/*
	 * Let others know about no transaction in progress by me.  This has to be
	 * done *after* the prepared transaction has been marked valid, else
	 * someone may think it is unlocked and recyclable.
	 */
	FUNC42(MyProc);

	/*
	 * In normal commit-processing, this is all non-critical post-transaction
	 * cleanup.  When the transaction is prepared, however, it's important
	 * that the locks and other per-backend resources are transferred to the
	 * prepared transaction's PGPROC entry.  Note that if an error is raised
	 * here, it's too late to abort the transaction. XXX: This probably should
	 * be in a critical section, to force a PANIC if any of this fails, but
	 * that cure could be worse than the disease.
	 */

	FUNC24(XACT_EVENT_PREPARE);

	FUNC45(TopTransactionResourceOwner,
						 RESOURCE_RELEASE_BEFORE_LOCKS,
						 true, true);

	/* Check we've released all buffer pins */
	FUNC4(true);

	/* Clean up the relation cache */
	FUNC12(true);

	/* notify doesn't need a postprepare call */

	FUNC35();

	FUNC32();

	FUNC38();

	FUNC34(xid);

	FUNC33(xid);
	FUNC36(xid);

	FUNC45(TopTransactionResourceOwner,
						 RESOURCE_RELEASE_LOCKS,
						 true, true);
	FUNC45(TopTransactionResourceOwner,
						 RESOURCE_RELEASE_AFTER_LOCKS,
						 true, true);

	/*
	 * Allow another backend to finish the transaction.  After
	 * PostPrepare_Twophase(), the transaction is completely detached from our
	 * backend.  The rest is just non-critical cleanup of backend-local state.
	 */
	FUNC37();

	/* PREPARE acts the same as COMMIT as far as GUC is concerned */
	FUNC8(true, 1);
	FUNC14(true);
	FUNC6();
	FUNC16(true);
	FUNC11(true, false);
	FUNC13();
	FUNC7(true);
	FUNC5();
	FUNC9(true);
	/* don't call AtEOXact_PgStat here; we fixed pgstat state above */
	FUNC15(true, true);
	FUNC55(0);

	CurrentResourceOwner = NULL;
	FUNC44(TopTransactionResourceOwner);
	s->curTransactionOwner = NULL;
	CurTransactionResourceOwner = NULL;
	TopTransactionResourceOwner = NULL;

	FUNC3();

	s->fullTransactionId = InvalidFullTransactionId;
	s->subTransactionId = InvalidSubTransactionId;
	s->nestingLevel = 0;
	s->gucNestLevel = 0;
	s->childXids = NULL;
	s->nChildXids = 0;
	s->maxChildXids = 0;

	XactTopFullTransactionId = InvalidFullTransactionId;
	nParallelCurrentXids = 0;

	/*
	 * done with 1st phase commit processing, set current transaction state
	 * back to default
	 */
	s->state = TRANS_DEFAULT;

	FUNC43();
}