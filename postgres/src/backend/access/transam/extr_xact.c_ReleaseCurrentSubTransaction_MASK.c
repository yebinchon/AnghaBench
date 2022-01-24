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
struct TYPE_3__ {scalar_t__ blockState; scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  CurTransactionContext ; 
 TYPE_1__* CurrentTransactionState ; 
 int /*<<< orphan*/  ERRCODE_INVALID_TRANSACTION_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ TBLOCK_SUBINPROGRESS ; 
 scalar_t__ TRANS_INPROGRESS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void
FUNC9(void)
{
	TransactionState s = CurrentTransactionState;

	/*
	 * Workers synchronize transaction state at the beginning of each parallel
	 * operation, so we can't account for commit of subtransactions after that
	 * point.  This should not happen anyway.  Code calling this would
	 * typically have called BeginInternalSubTransaction() first, failing
	 * there.
	 */
	if (FUNC3())
		FUNC6(ERROR,
				(FUNC7(ERRCODE_INVALID_TRANSACTION_STATE),
				 FUNC8("cannot commit subtransactions during a parallel operation")));

	if (s->blockState != TBLOCK_SUBINPROGRESS)
		FUNC5(ERROR, "ReleaseCurrentSubTransaction: unexpected state %s",
			 FUNC1(s->blockState));
	FUNC0(s->state == TRANS_INPROGRESS);
	FUNC4(CurTransactionContext);
	FUNC2();
	s = CurrentTransactionState;	/* changed by pop */
	FUNC0(s->state == TRANS_INPROGRESS);
}