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
typedef  int uint64 ;
typedef  scalar_t__ uint32 ;
typedef  scalar_t__ TransactionId ;
struct TYPE_2__ {int /*<<< orphan*/  oldestClogXid; } ;
typedef  int /*<<< orphan*/  FullTransactionId ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLogTruncationLock ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* ShmemVariableCache ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UINT64_FORMAT ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC13(uint64 xid_with_epoch, TransactionId *extracted_xid)
{
	uint32		xid_epoch = (uint32) (xid_with_epoch >> 32);
	TransactionId xid = (TransactionId) xid_with_epoch;
	uint32		now_epoch;
	TransactionId now_epoch_next_xid;
	FullTransactionId now_fullxid;

	now_fullxid = FUNC3();
	now_epoch_next_xid = FUNC8(now_fullxid);
	now_epoch = FUNC1(now_fullxid);

	if (extracted_xid != NULL)
		*extracted_xid = xid;

	if (!FUNC5(xid))
		return false;

	/* For non-normal transaction IDs, we can ignore the epoch. */
	if (!FUNC4(xid))
		return true;

	/* If the transaction ID is in the future, throw an error. */
	if (xid_with_epoch >= FUNC7(now_fullxid))
		FUNC9(ERROR,
				(FUNC10(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC11("transaction ID %s is in the future",
						FUNC12(UINT64_FORMAT, xid_with_epoch))));

	/*
	 * ShmemVariableCache->oldestClogXid is protected by CLogTruncationLock,
	 * but we don't acquire that lock here.  Instead, we require the caller to
	 * acquire it, because the caller is presumably going to look up the
	 * returned XID.  If we took and released the lock within this function, a
	 * CLOG truncation could occur before the caller finished with the XID.
	 */
	FUNC0(FUNC2(CLogTruncationLock));

	/*
	 * If the transaction ID has wrapped around, it's definitely too old to
	 * determine the commit status.  Otherwise, we can compare it to
	 * ShmemVariableCache->oldestClogXid to determine whether the relevant
	 * CLOG entry is guaranteed to still exist.
	 */
	if (xid_epoch + 1 < now_epoch
		|| (xid_epoch + 1 == now_epoch && xid < now_epoch_next_xid)
		|| FUNC6(xid, ShmemVariableCache->oldestClogXid))
		return false;

	return true;
}