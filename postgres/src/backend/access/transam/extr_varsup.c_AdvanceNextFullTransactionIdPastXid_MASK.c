#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  scalar_t__ TransactionId ;
struct TYPE_2__ {int /*<<< orphan*/  nextFullXid; } ;
typedef  int /*<<< orphan*/  FullTransactionId ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 TYPE_1__* ShmemVariableCache ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XidGenLock ; 
 scalar_t__ FUNC9 (int) ; 

void
FUNC10(TransactionId xid)
{
	FullTransactionId newNextFullXid;
	TransactionId next_xid;
	uint32		epoch;

	/*
	 * It is safe to read nextFullXid without a lock, because this is only
	 * called from the startup process or single-process mode, meaning that no
	 * other process can modify it.
	 */
	FUNC1(FUNC0() || !IsUnderPostmaster);

	/* Fast return if this isn't an xid high enough to move the needle. */
	next_xid = FUNC8(ShmemVariableCache->nextFullXid);
	if (!FUNC7(xid, next_xid))
		return;

	/*
	 * Compute the FullTransactionId that comes after the given xid.  To do
	 * this, we preserve the existing epoch, but detect when we've wrapped
	 * into a new epoch.  This is necessary because WAL records and 2PC state
	 * currently contain 32 bit xids.  The wrap logic is safe in those cases
	 * because the span of active xids cannot exceed one epoch at any given
	 * point in the WAL stream.
	 */
	FUNC6(xid);
	epoch = FUNC2(ShmemVariableCache->nextFullXid);
	if (FUNC9(xid < next_xid))
		++epoch;
	newNextFullXid = FUNC3(epoch, xid);

	/*
	 * We still need to take a lock to modify the value when there are
	 * concurrent readers.
	 */
	FUNC4(XidGenLock, LW_EXCLUSIVE);
	ShmemVariableCache->nextFullXid = newNextFullXid;
	FUNC5(XidGenLock);
}