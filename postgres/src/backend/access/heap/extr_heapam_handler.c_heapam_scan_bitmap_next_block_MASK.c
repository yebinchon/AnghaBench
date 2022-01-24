#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* TableScanDesc ;
struct TYPE_20__ {int /*<<< orphan*/  rd_id; } ;
struct TYPE_19__ {int rs_ntuples; scalar_t__ rs_nblocks; scalar_t__* rs_vistuples; int /*<<< orphan*/  rs_cbuf; scalar_t__ rs_cblock; scalar_t__ rs_cindex; } ;
struct TYPE_18__ {int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_tableOid; int /*<<< orphan*/  t_len; scalar_t__ t_data; } ;
struct TYPE_17__ {scalar_t__ blockno; scalar_t__ ntuples; scalar_t__* offsets; } ;
struct TYPE_16__ {TYPE_7__* rs_rd; int /*<<< orphan*/  rs_snapshot; } ;
typedef  TYPE_2__ TBMIterateResult ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  scalar_t__ Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ HeapTupleHeader ;
typedef  TYPE_3__ HeapTupleData ;
typedef  TYPE_4__* HeapScanDesc ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_7__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FirstOffsetNumber ; 
 int FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MaxHeapTuplesPerPage ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_7__*,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC17(TableScanDesc scan,
							  TBMIterateResult *tbmres)
{
	HeapScanDesc hscan = (HeapScanDesc) scan;
	BlockNumber page = tbmres->blockno;
	Buffer		buffer;
	Snapshot	snapshot;
	int			ntup;

	hscan->rs_cindex = 0;
	hscan->rs_ntuples = 0;

	/*
	 * Ignore any claimed entries past what we think is the end of the
	 * relation. It may have been extended after the start of our scan (we
	 * only hold an AccessShareLock, and it could be inserts from this
	 * backend).
	 */
	if (page >= hscan->rs_nblocks)
		return false;

	/*
	 * Acquire pin on the target heap page, trading in any pin we held before.
	 */
	hscan->rs_cbuf = FUNC14(hscan->rs_cbuf,
										  scan->rs_rd,
										  page);
	hscan->rs_cblock = page;
	buffer = hscan->rs_cbuf;
	snapshot = scan->rs_snapshot;

	ntup = 0;

	/*
	 * Prune and repair fragmentation for the whole page, if possible.
	 */
	FUNC16(scan->rs_rd, buffer);

	/*
	 * We must hold share lock on the buffer content while examining tuple
	 * visibility.  Afterwards, however, the tuples we have found to be
	 * visible are guaranteed good as long as we hold the buffer pin.
	 */
	FUNC8(buffer, BUFFER_LOCK_SHARE);

	/*
	 * We need two separate strategies for lossy and non-lossy cases.
	 */
	if (tbmres->ntuples >= 0)
	{
		/*
		 * Bitmap is non-lossy, so we just look through the offsets listed in
		 * tbmres; but we have to follow any HOT chain starting at each such
		 * offset.
		 */
		int			curslot;

		for (curslot = 0; curslot < tbmres->ntuples; curslot++)
		{
			OffsetNumber offnum = tbmres->offsets[curslot];
			ItemPointerData tid;
			HeapTupleData heapTuple;

			FUNC7(&tid, page, offnum);
			if (FUNC15(&tid, scan->rs_rd, buffer, snapshot,
									   &heapTuple, NULL, true))
				hscan->rs_vistuples[ntup++] = FUNC6(&tid);
		}
	}
	else
	{
		/*
		 * Bitmap is lossy, so we must examine each line pointer on the page.
		 * But we can ignore HOT chains, since we'll check each tuple anyway.
		 */
		Page		dp = (Page) FUNC1(buffer);
		OffsetNumber maxoff = FUNC12(dp);
		OffsetNumber offnum;

		for (offnum = FirstOffsetNumber; offnum <= maxoff; offnum = FUNC9(offnum))
		{
			ItemId		lp;
			HeapTupleData loctup;
			bool		valid;

			lp = FUNC11(dp, offnum);
			if (!FUNC5(lp))
				continue;
			loctup.t_data = (HeapTupleHeader) FUNC10((Page) dp, lp);
			loctup.t_len = FUNC4(lp);
			loctup.t_tableOid = scan->rs_rd->rd_id;
			FUNC7(&loctup.t_self, page, offnum);
			valid = FUNC3(&loctup, snapshot, buffer);
			if (valid)
			{
				hscan->rs_vistuples[ntup++] = offnum;
				FUNC13(scan->rs_rd, &loctup, snapshot);
			}
			FUNC2(valid, scan->rs_rd, &loctup,
											buffer, snapshot);
		}
	}

	FUNC8(buffer, BUFFER_LOCK_UNLOCK);

	FUNC0(ntup <= MaxHeapTuplesPerPage);
	hscan->rs_ntuples = ntup;

	return ntup > 0;
}