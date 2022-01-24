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
struct TYPE_3__ {scalar_t__ state; scalar_t__ parallelModeLevel; scalar_t__ maxChildXids; scalar_t__ nChildXids; int /*<<< orphan*/ * childXids; scalar_t__ gucNestLevel; scalar_t__ nestingLevel; int /*<<< orphan*/  subTransactionId; void* fullTransactionId; int /*<<< orphan*/ * curTransactionOwner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/ * CurTransactionResourceOwner ; 
 int /*<<< orphan*/ * CurrentResourceOwner ; 
 TYPE_1__* CurrentTransactionState ; 
 int /*<<< orphan*/  FATAL ; 
 void* InvalidFullTransactionId ; 
 int /*<<< orphan*/  InvalidSubTransactionId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRANS_ABORT ; 
 scalar_t__ TRANS_DEFAULT ; 
 int /*<<< orphan*/ * TopTransactionResourceOwner ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 void* XactTopFullTransactionId ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ nParallelCurrentXids ; 

__attribute__((used)) static void
FUNC6(void)
{
	TransactionState s = CurrentTransactionState;

	/*
	 * State should still be TRANS_ABORT from AbortTransaction().
	 */
	if (s->state != TRANS_ABORT)
		FUNC5(FATAL, "CleanupTransaction: unexpected state %s",
			 FUNC4(s->state));

	/*
	 * do abort cleanup processing
	 */
	FUNC1();		/* now safe to release portal memory */
	FUNC2(false, true); /* and release the transaction's snapshots */

	CurrentResourceOwner = NULL;	/* and resource owner */
	if (TopTransactionResourceOwner)
		FUNC3(TopTransactionResourceOwner);
	s->curTransactionOwner = NULL;
	CurTransactionResourceOwner = NULL;
	TopTransactionResourceOwner = NULL;

	FUNC0();			/* and transaction memory */

	s->fullTransactionId = InvalidFullTransactionId;
	s->subTransactionId = InvalidSubTransactionId;
	s->nestingLevel = 0;
	s->gucNestLevel = 0;
	s->childXids = NULL;
	s->nChildXids = 0;
	s->maxChildXids = 0;
	s->parallelModeLevel = 0;

	XactTopFullTransactionId = InvalidFullTransactionId;
	nParallelCurrentXids = 0;

	/*
	 * done with abort processing, set current transaction state back to
	 * default
	 */
	s->state = TRANS_DEFAULT;
}