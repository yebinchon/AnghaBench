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
typedef  scalar_t__ TransactionId ;
struct TYPE_3__ {int headKnownAssignedXids; int tailKnownAssignedXids; int maxKnownAssignedXids; int numKnownAssignedXids; int /*<<< orphan*/  known_assigned_xids_lck; } ;
typedef  TYPE_1__ ProcArrayStruct ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__* KnownAssignedXids ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int* KnownAssignedXidsValid ; 
 int /*<<< orphan*/  LOG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* procArray ; 

__attribute__((used)) static void
FUNC12(TransactionId from_xid, TransactionId to_xid,
					 bool exclusive_lock)
{
	ProcArrayStruct *pArray = procArray;
	TransactionId next_xid;
	int			head,
				tail;
	int			nxids;
	int			i;

	FUNC0(FUNC10(from_xid, to_xid));

	/*
	 * Calculate how many array slots we'll need.  Normally this is cheap; in
	 * the unusual case where the XIDs cross the wrap point, we do it the hard
	 * way.
	 */
	if (to_xid >= from_xid)
		nxids = to_xid - from_xid + 1;
	else
	{
		nxids = 1;
		next_xid = from_xid;
		while (FUNC9(next_xid, to_xid))
		{
			nxids++;
			FUNC7(next_xid);
		}
	}

	/*
	 * Since only the startup process modifies the head/tail pointers, we
	 * don't need a lock to read them here.
	 */
	head = pArray->headKnownAssignedXids;
	tail = pArray->tailKnownAssignedXids;

	FUNC0(head >= 0 && head <= pArray->maxKnownAssignedXids);
	FUNC0(tail >= 0 && tail < pArray->maxKnownAssignedXids);

	/*
	 * Verify that insertions occur in TransactionId sequence.  Note that even
	 * if the last existing element is marked invalid, it must still have a
	 * correctly sequenced XID value.
	 */
	if (head > tail &&
		FUNC8(KnownAssignedXids[head - 1], from_xid))
	{
		FUNC2(LOG);
		FUNC11(ERROR, "out-of-order XID insertion in KnownAssignedXids");
	}

	/*
	 * If our xids won't fit in the remaining space, compress out free space
	 */
	if (head + nxids > pArray->maxKnownAssignedXids)
	{
		/* must hold lock to compress */
		if (!exclusive_lock)
			FUNC3(ProcArrayLock, LW_EXCLUSIVE);

		FUNC1(true);

		head = pArray->headKnownAssignedXids;
		/* note: we no longer care about the tail pointer */

		if (!exclusive_lock)
			FUNC4(ProcArrayLock);

		/*
		 * If it still won't fit then we're out of memory
		 */
		if (head + nxids > pArray->maxKnownAssignedXids)
			FUNC11(ERROR, "too many KnownAssignedXids");
	}

	/* Now we can insert the xids into the space starting at head */
	next_xid = from_xid;
	for (i = 0; i < nxids; i++)
	{
		KnownAssignedXids[head] = next_xid;
		KnownAssignedXidsValid[head] = true;
		FUNC7(next_xid);
		head++;
	}

	/* Adjust count of number of valid entries */
	pArray->numKnownAssignedXids += nxids;

	/*
	 * Now update the head pointer.  We use a spinlock to protect this
	 * pointer, not because the update is likely to be non-atomic, but to
	 * ensure that other processors see the above array updates before they
	 * see the head pointer change.
	 *
	 * If we're holding ProcArrayLock exclusively, there's no need to take the
	 * spinlock.
	 */
	if (exclusive_lock)
		pArray->headKnownAssignedXids = head;
	else
	{
		FUNC5(&pArray->known_assigned_xids_lck);
		pArray->headKnownAssignedXids = head;
		FUNC6(&pArray->known_assigned_xids_lck);
	}
}