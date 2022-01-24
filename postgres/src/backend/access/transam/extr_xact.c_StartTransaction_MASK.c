#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ backendId; int /*<<< orphan*/  localTransactionId; } ;
typedef  TYPE_1__ VirtualTransactionId ;
typedef  TYPE_2__* TransactionState ;
struct TYPE_9__ {scalar_t__ backendId; int /*<<< orphan*/  lxid; } ;
struct TYPE_8__ {scalar_t__ state; int nestingLevel; int gucNestLevel; scalar_t__ prevSecContext; int startedInRecovery; int didLogXid; void* subTransactionId; int /*<<< orphan*/  prevUser; scalar_t__ maxChildXids; scalar_t__ nChildXids; int /*<<< orphan*/ * childXids; int /*<<< orphan*/  fullTransactionId; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* CurrentTransactionState ; 
 int /*<<< orphan*/  DefaultXactDeferrable ; 
 int /*<<< orphan*/  DefaultXactIsoLevel ; 
 int DefaultXactReadOnly ; 
 int /*<<< orphan*/  FirstCommandId ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  InvalidFullTransactionId ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int MAX_RANDOM_VALUE ; 
 scalar_t__ MyBackendId ; 
 TYPE_5__* MyProc ; 
 scalar_t__ MyXactFlags ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRANS_DEFAULT ; 
 scalar_t__ TRANS_INPROGRESS ; 
 scalar_t__ TRANS_START ; 
 void* TopSubTransactionId ; 
 TYPE_2__ TopTransactionStateData ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__) ; 
 int /*<<< orphan*/  XactDeferrable ; 
 int /*<<< orphan*/  XactIsoLevel ; 
 int XactReadOnly ; 
 int /*<<< orphan*/  XactTopFullTransactionId ; 
 int /*<<< orphan*/  currentCommandId ; 
 int currentCommandIdUsed ; 
 void* currentSubTransactionId ; 
 int forceSyncCommit ; 
 int log_xact_sample_rate ; 
 scalar_t__ nUnreportedXids ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int FUNC17 () ; 
 scalar_t__ stmtStartTimestamp ; 
 scalar_t__ xactStartTimestamp ; 
 scalar_t__ xactStopTimestamp ; 
 int xact_is_sampled ; 

__attribute__((used)) static void
FUNC18(void)
{
	TransactionState s;
	VirtualTransactionId vxid;

	/*
	 * Let's just make sure the state stack is empty
	 */
	s = &TopTransactionStateData;
	CurrentTransactionState = s;

	FUNC1(!FUNC6(XactTopFullTransactionId));

	/* check the current transaction state */
	FUNC1(s->state == TRANS_DEFAULT);

	/*
	 * Set the current transaction state information appropriately during
	 * start processing.  Note that once the transaction status is switched
	 * this process cannot fail until the user ID and the security context
	 * flags are fetched below.
	 */
	s->state = TRANS_START;
	s->fullTransactionId = InvalidFullTransactionId;	/* until assigned */

	/* Determine if statements are logged in this transaction */
	xact_is_sampled = log_xact_sample_rate != 0 &&
		(log_xact_sample_rate == 1 ||
		 FUNC17() <= log_xact_sample_rate * MAX_RANDOM_VALUE);

	/*
	 * initialize current transaction state fields
	 *
	 * note: prevXactReadOnly is not used at the outermost level
	 */
	s->nestingLevel = 1;
	s->gucNestLevel = 1;
	s->childXids = NULL;
	s->nChildXids = 0;
	s->maxChildXids = 0;

	/*
	 * Once the current user ID and the security context flags are fetched,
	 * both will be properly reset even if transaction startup fails.
	 */
	FUNC9(&s->prevUser, &s->prevSecContext);

	/* SecurityRestrictionContext should never be set outside a transaction */
	FUNC1(s->prevSecContext == 0);

	/*
	 * Make sure we've reset xact state variables
	 *
	 * If recovery is still in progress, mark this transaction as read-only.
	 * We have lower level defences in XLogInsert and elsewhere to stop us
	 * from modifying data during recovery, but this gives the normal
	 * indication to the user that the transaction is read-only.
	 */
	if (FUNC11())
	{
		s->startedInRecovery = true;
		XactReadOnly = true;
	}
	else
	{
		s->startedInRecovery = false;
		XactReadOnly = DefaultXactReadOnly;
	}
	XactDeferrable = DefaultXactDeferrable;
	XactIsoLevel = DefaultXactIsoLevel;
	forceSyncCommit = false;
	MyXactFlags = 0;

	/*
	 * reinitialize within-transaction counters
	 */
	s->subTransactionId = TopSubTransactionId;
	currentSubTransactionId = TopSubTransactionId;
	currentCommandId = FirstCommandId;
	currentCommandIdUsed = false;

	/*
	 * initialize reported xid accounting
	 */
	nUnreportedXids = 0;
	s->didLogXid = false;

	/*
	 * must initialize resource-management stuff first
	 */
	FUNC4();
	FUNC5();

	/*
	 * Assign a new LocalTransactionId, and combine it with the backendId to
	 * form a virtual transaction id.
	 */
	vxid.backendId = MyBackendId;
	vxid.localTransactionId = FUNC8();

	/*
	 * Lock the virtual transaction id before we announce it in the proc array
	 */
	FUNC15(vxid);

	/*
	 * Advertise it in the proc array.  We assume assignment of
	 * localTransactionId is atomic, and the backendId should be set already.
	 */
	FUNC1(MyProc->backendId == vxid.backendId);
	MyProc->lxid = vxid.localTransactionId;

	FUNC14(vxid.localTransactionId);

	/*
	 * set transaction_timestamp() (a/k/a now()).  Normally, we want this to
	 * be the same as the first command's statement_timestamp(), so don't do a
	 * fresh GetCurrentTimestamp() call (which'd be expensive anyway).  But
	 * for transactions started inside procedures (i.e., nonatomic SPI
	 * contexts), we do need to advance the timestamp.  Also, in a parallel
	 * worker, the timestamp should already have been provided by a call to
	 * SetParallelStartTimestamps().
	 */
	if (!FUNC10())
	{
		if (!FUNC12())
			xactStartTimestamp = stmtStartTimestamp;
		else
			xactStartTimestamp = FUNC7();
	}
	else
		FUNC1(xactStartTimestamp != 0);
	FUNC16(xactStartTimestamp);
	/* Mark xactStopTimestamp as unset. */
	xactStopTimestamp = 0;

	/*
	 * initialize other subsystems for new transaction
	 */
	FUNC3();
	FUNC2();
	FUNC0();

	/*
	 * done with start processing, set current transaction state to "in
	 * progress"
	 */
	s->state = TRANS_INPROGRESS;

	FUNC13("StartTransaction");
}