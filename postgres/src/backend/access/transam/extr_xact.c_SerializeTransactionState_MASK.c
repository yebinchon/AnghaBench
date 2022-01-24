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
typedef  TYPE_1__* TransactionState ;
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_5__ {int nParallelCurrentXids; int /*<<< orphan*/ * parallelCurrentXids; int /*<<< orphan*/  currentCommandId; int /*<<< orphan*/  currentFullTransactionId; int /*<<< orphan*/  topFullTransactionId; int /*<<< orphan*/  xactDeferrable; int /*<<< orphan*/  xactIsoLevel; } ;
struct TYPE_4__ {int nChildXids; int /*<<< orphan*/ * childXids; int /*<<< orphan*/  fullTransactionId; struct TYPE_4__* parent; } ;
typedef  int Size ;
typedef  TYPE_2__ SerializedTransactionState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* CurrentTransactionState ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ParallelCurrentXids ; 
 int SerializedTransactionStateHeaderSize ; 
 int /*<<< orphan*/  XactDeferrable ; 
 int /*<<< orphan*/  XactIsoLevel ; 
 int /*<<< orphan*/  XactTopFullTransactionId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  currentCommandId ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int nParallelCurrentXids ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xidComparator ; 

void
FUNC7(Size maxsize, char *start_address)
{
	TransactionState s;
	Size		nxids = 0;
	Size		i = 0;
	TransactionId *workspace;
	SerializedTransactionState *result;

	result = (SerializedTransactionState *) start_address;

	result->xactIsoLevel = XactIsoLevel;
	result->xactDeferrable = XactDeferrable;
	result->topFullTransactionId = XactTopFullTransactionId;
	result->currentFullTransactionId =
		CurrentTransactionState->fullTransactionId;
	result->currentCommandId = currentCommandId;

	/*
	 * If we're running in a parallel worker and launching a parallel worker
	 * of our own, we can just pass along the information that was passed to
	 * us.
	 */
	if (nParallelCurrentXids > 0)
	{
		result->nParallelCurrentXids = nParallelCurrentXids;
		FUNC4(&result->parallelCurrentXids[0], ParallelCurrentXids,
			   nParallelCurrentXids * sizeof(TransactionId));
		return;
	}

	/*
	 * OK, we need to generate a sorted list of XIDs that our workers should
	 * view as current.  First, figure out how many there are.
	 */
	for (s = CurrentTransactionState; s != NULL; s = s->parent)
	{
		if (FUNC1(s->fullTransactionId))
			nxids = FUNC3(nxids, 1);
		nxids = FUNC3(nxids, s->nChildXids);
	}
	FUNC0(SerializedTransactionStateHeaderSize + nxids * sizeof(TransactionId)
		   <= maxsize);

	/* Copy them to our scratch space. */
	workspace = FUNC5(nxids * sizeof(TransactionId));
	for (s = CurrentTransactionState; s != NULL; s = s->parent)
	{
		if (FUNC1(s->fullTransactionId))
			workspace[i++] = FUNC2(s->fullTransactionId);
		FUNC4(&workspace[i], s->childXids,
			   s->nChildXids * sizeof(TransactionId));
		i += s->nChildXids;
	}
	FUNC0(i == nxids);

	/* Sort them. */
	FUNC6(workspace, nxids, sizeof(TransactionId), xidComparator);

	/* Copy data into output area. */
	result->nParallelCurrentXids = nxids;
	FUNC4(&result->parallelCurrentXids[0], workspace,
		   nxids * sizeof(TransactionId));
}