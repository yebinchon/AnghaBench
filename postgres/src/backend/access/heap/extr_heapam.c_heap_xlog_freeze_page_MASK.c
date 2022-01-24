#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ xl_heap_freeze_tuple ;
struct TYPE_11__ {int ntuples; int /*<<< orphan*/  cutoff_xid; } ;
typedef  TYPE_2__ xl_heap_freeze_page ;
typedef  int /*<<< orphan*/  XLogRecPtr ;
struct TYPE_12__ {int /*<<< orphan*/  EndRecPtr; } ;
typedef  TYPE_3__ XLogReaderState ;
typedef  int /*<<< orphan*/  TransactionId ;
typedef  int /*<<< orphan*/  RelFileNode ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ HeapTupleHeader ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 scalar_t__ BLK_NEEDS_REDO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ InHotStandby ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC14(XLogReaderState *record)
{
	XLogRecPtr	lsn = record->EndRecPtr;
	xl_heap_freeze_page *xlrec = (xl_heap_freeze_page *) FUNC12(record);
	TransactionId cutoff_xid = xlrec->cutoff_xid;
	Buffer		buffer;
	int			ntup;

	/*
	 * In Hot Standby mode, ensure that there's no queries running which still
	 * consider the frozen xids as running.
	 */
	if (InHotStandby)
	{
		RelFileNode rnode;
		TransactionId latestRemovedXid = cutoff_xid;

		FUNC7(latestRemovedXid);

		FUNC11(record, 0, &rnode, NULL, NULL);
		FUNC6(latestRemovedXid, rnode);
	}

	if (FUNC9(record, 0, &buffer) == BLK_NEEDS_REDO)
	{
		Page		page = FUNC0(buffer);
		xl_heap_freeze_tuple *tuples;

		tuples = (xl_heap_freeze_tuple *) FUNC10(record, 0, NULL);

		/* now execute freeze plan for each frozen tuple */
		for (ntup = 0; ntup < xlrec->ntuples; ntup++)
		{
			xl_heap_freeze_tuple *xlrec_tp;
			ItemId		lp;
			HeapTupleHeader tuple;

			xlrec_tp = &tuples[ntup];
			lp = FUNC4(page, xlrec_tp->offset); /* offsets are one-based */
			tuple = (HeapTupleHeader) FUNC3(page, lp);

			FUNC13(tuple, xlrec_tp);
		}

		FUNC5(page, lsn);
		FUNC2(buffer);
	}
	if (FUNC1(buffer))
		FUNC8(buffer);
}