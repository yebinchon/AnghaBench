#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pageno; int /*<<< orphan*/  oldestXid; } ;
typedef  TYPE_2__ xl_commit_ts_truncate ;
struct TYPE_9__ {int /*<<< orphan*/  nodeid; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  mainxid; } ;
typedef  TYPE_3__ xl_commit_ts_set ;
typedef  scalar_t__ uint8 ;
typedef  int /*<<< orphan*/  XLogReaderState ;
typedef  int TransactionId ;
struct TYPE_10__ {TYPE_1__* shared; } ;
struct TYPE_7__ {int /*<<< orphan*/  latest_page_number; int /*<<< orphan*/ * page_dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ COMMIT_TS_SETTS ; 
 scalar_t__ COMMIT_TS_TRUNCATE ; 
 scalar_t__ COMMIT_TS_ZEROPAGE ; 
 int /*<<< orphan*/  CommitTsControlLock ; 
 TYPE_4__* CommitTsCtl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int SizeOfCommitTsSet ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ XLR_INFO_MASK ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int*,int,int) ; 
 int* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int*) ; 

void
FUNC16(XLogReaderState *record)
{
	uint8		info = FUNC9(record) & ~XLR_INFO_MASK;

	/* Backup blocks are not used in commit_ts records */
	FUNC1(!FUNC10(record));

	if (info == COMMIT_TS_ZEROPAGE)
	{
		int			pageno;
		int			slotno;

		FUNC13(&pageno, FUNC7(record), sizeof(int));

		FUNC2(CommitTsControlLock, LW_EXCLUSIVE);

		slotno = FUNC11(pageno, false);
		FUNC5(CommitTsCtl, slotno);
		FUNC1(!CommitTsCtl->shared->page_dirty[slotno]);

		FUNC3(CommitTsControlLock);
	}
	else if (info == COMMIT_TS_TRUNCATE)
	{
		xl_commit_ts_truncate *trunc = (xl_commit_ts_truncate *) FUNC7(record);

		FUNC0(trunc->oldestXid);

		/*
		 * During XLOG replay, latest_page_number isn't set up yet; insert a
		 * suitable value to bypass the sanity test in SimpleLruTruncate.
		 */
		CommitTsCtl->shared->latest_page_number = trunc->pageno;

		FUNC4(CommitTsCtl, trunc->pageno);
	}
	else if (info == COMMIT_TS_SETTS)
	{
		xl_commit_ts_set *setts = (xl_commit_ts_set *) FUNC7(record);
		int			nsubxids;
		TransactionId *subxids;

		nsubxids = ((FUNC8(record) - SizeOfCommitTsSet) /
					sizeof(TransactionId));
		if (nsubxids > 0)
		{
			subxids = FUNC14(sizeof(TransactionId) * nsubxids);
			FUNC13(subxids,
				   FUNC7(record) + SizeOfCommitTsSet,
				   sizeof(TransactionId) * nsubxids);
		}
		else
			subxids = NULL;

		FUNC6(setts->mainxid, nsubxids, subxids,
									   setts->timestamp, setts->nodeid, true);
		if (subxids)
			FUNC15(subxids);
	}
	else
		FUNC12(PANIC, "commit_ts_redo: unknown op code %u", info);
}