#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_15__ {int /*<<< orphan*/  (* NextSampleTuple ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ TsmRoutine ;
typedef  TYPE_2__* TableScanDesc ;
struct TYPE_18__ {int /*<<< orphan*/  t_self; int /*<<< orphan*/  t_len; scalar_t__ t_data; } ;
struct TYPE_19__ {int /*<<< orphan*/  rs_cbuf; TYPE_4__ rs_ctup; int /*<<< orphan*/  rs_cblock; } ;
struct TYPE_17__ {TYPE_1__* tsmroutine; } ;
struct TYPE_16__ {int rs_flags; int /*<<< orphan*/  rs_rd; TYPE_13__* rs_snapshot; } ;
struct TYPE_14__ {int /*<<< orphan*/  takenDuringRecovery; } ;
typedef  TYPE_3__ SampleScanState ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ HeapTupleHeader ;
typedef  TYPE_4__* HeapTuple ;
typedef  TYPE_5__* HeapScanDesc ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int SO_ALLOW_PAGEMODE ; 
 int FUNC15 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC18(TableScanDesc scan, SampleScanState *scanstate,
							  TupleTableSlot *slot)
{
	HeapScanDesc hscan = (HeapScanDesc) scan;
	TsmRoutine *tsm = scanstate->tsmroutine;
	BlockNumber blockno = hscan->rs_cblock;
	bool		pagemode = (scan->rs_flags & SO_ALLOW_PAGEMODE) != 0;

	Page		page;
	bool		all_visible;
	OffsetNumber maxoffset;

	/*
	 * When not using pagemode, we must lock the buffer during tuple
	 * visibility checks.
	 */
	if (!pagemode)
		FUNC9(hscan->rs_cbuf, BUFFER_LOCK_SHARE);

	page = (Page) FUNC1(hscan->rs_cbuf);
	all_visible = FUNC14(page) &&
		!scan->rs_snapshot->takenDuringRecovery;
	maxoffset = FUNC13(page);

	for (;;)
	{
		OffsetNumber tupoffset;

		FUNC2();

		/* Ask the tablesample method which tuples to check on this page. */
		tupoffset = tsm->NextSampleTuple(scanstate,
										 blockno,
										 maxoffset);

		if (FUNC10(tupoffset))
		{
			ItemId		itemid;
			bool		visible;
			HeapTuple	tuple = &(hscan->rs_ctup);

			/* Skip invalid tuple pointers. */
			itemid = FUNC12(page, tupoffset);
			if (!FUNC7(itemid))
				continue;

			tuple->t_data = (HeapTupleHeader) FUNC11(page, itemid);
			tuple->t_len = FUNC6(itemid);
			FUNC8(&(tuple->t_self), blockno, tupoffset);


			if (all_visible)
				visible = true;
			else
				visible = FUNC15(scan, hscan->rs_cbuf,
												 tuple, tupoffset);

			/* in pagemode, heapgetpage did this for us */
			if (!pagemode)
				FUNC3(visible, scan->rs_rd, tuple,
												hscan->rs_cbuf, scan->rs_snapshot);

			/* Try next tuple from same page. */
			if (!visible)
				continue;

			/* Found visible tuple, return it. */
			if (!pagemode)
				FUNC9(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);

			FUNC5(tuple, slot, hscan->rs_cbuf);

			/* Count successfully-fetched tuples as heap fetches */
			FUNC16(scan->rs_rd);

			return true;
		}
		else
		{
			/*
			 * If we get here, it means we've exhausted the items on this page
			 * and it's time to move to the next.
			 */
			if (!pagemode)
				FUNC9(hscan->rs_cbuf, BUFFER_LOCK_UNLOCK);

			FUNC4(slot);
			return false;
		}
	}

	FUNC0(0);
}