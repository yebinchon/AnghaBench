#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8 ;
typedef  scalar_t__ XLogRecPtr ;
typedef  int /*<<< orphan*/  XLogRecData ;
typedef  scalar_t__ RmgrId ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int*) ; 
 scalar_t__ InvalidXLogRecPtr ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  PANIC ; 
 scalar_t__ RM_XLOG_ID ; 
 scalar_t__ SizeOfXLogLongPHD ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 int XLR_CHECK_CONSISTENCY ; 
 int XLR_RMGR_INFO_MASK ; 
 int XLR_SPECIAL_REL_UPDATE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int,scalar_t__,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  begininsert_called ; 
 int /*<<< orphan*/  curinsert_flags ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 

XLogRecPtr
FUNC7(RmgrId rmid, uint8 info)
{
	XLogRecPtr	EndPos;

	/* XLogBeginInsert() must have been called. */
	if (!begininsert_called)
		FUNC6(ERROR, "XLogBeginInsert was not called");

	/*
	 * The caller can set rmgr bits, XLR_SPECIAL_REL_UPDATE and
	 * XLR_CHECK_CONSISTENCY; the rest are reserved for use by me.
	 */
	if ((info & ~(XLR_RMGR_INFO_MASK |
				  XLR_SPECIAL_REL_UPDATE |
				  XLR_CHECK_CONSISTENCY)) != 0)
		FUNC6(PANIC, "invalid xlog info mask %02X", info);

	FUNC2(rmid, info);

	/*
	 * In bootstrap mode, we don't actually log anything but XLOG resources;
	 * return a phony record pointer.
	 */
	if (FUNC1() && rmid != RM_XLOG_ID)
	{
		FUNC5();
		EndPos = SizeOfXLogLongPHD; /* start of 1st chkpt record */
		return EndPos;
	}

	do
	{
		XLogRecPtr	RedoRecPtr;
		bool		doPageWrites;
		XLogRecPtr	fpw_lsn;
		XLogRecData *rdt;

		/*
		 * Get values needed to decide whether to do full-page writes. Since
		 * we don't yet have an insertion lock, these could change under us,
		 * but XLogInsertRecord will recheck them once it has a lock.
		 */
		FUNC0(&RedoRecPtr, &doPageWrites);

		rdt = FUNC4(rmid, info, RedoRecPtr, doPageWrites,
								 &fpw_lsn);

		EndPos = FUNC3(rdt, fpw_lsn, curinsert_flags);
	} while (EndPos == InvalidXLogRecPtr);

	FUNC5();

	return EndPos;
}