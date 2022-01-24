#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  rd_smgr; int /*<<< orphan*/  rd_node; } ;
struct TYPE_4__ {TYPE_3__* index; int /*<<< orphan*/  btws_pages_written; scalar_t__ btws_zeropage; scalar_t__ btws_use_wal; } ;
typedef  scalar_t__ Page ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  TYPE_1__ BTWriteState ;

/* Variables and functions */
 int /*<<< orphan*/  BLCKSZ ; 
 int /*<<< orphan*/  MAIN_FORKNUM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC7(BTWriteState *wstate, Page page, BlockNumber blkno)
{
	/* Ensure rd_smgr is open (could have been closed by relcache flush!) */
	FUNC1(wstate->index);

	/* XLOG stuff */
	if (wstate->btws_use_wal)
	{
		/* We use the XLOG_FPI record type for this */
		FUNC2(&wstate->index->rd_node, MAIN_FORKNUM, blkno, page, true);
	}

	/*
	 * If we have to write pages nonsequentially, fill in the space with
	 * zeroes until we come back and overwrite.  This is not logically
	 * necessary on standard Unix filesystems (unwritten space will read as
	 * zeroes anyway), but it should help to avoid fragmentation. The dummy
	 * pages aren't WAL-logged though.
	 */
	while (blkno > wstate->btws_pages_written)
	{
		if (!wstate->btws_zeropage)
			wstate->btws_zeropage = (Page) FUNC3(BLCKSZ);
		/* don't set checksum for all-zero page */
		FUNC5(wstate->index->rd_smgr, MAIN_FORKNUM,
				   wstate->btws_pages_written++,
				   (char *) wstate->btws_zeropage,
				   true);
	}

	FUNC0(page, blkno);

	/*
	 * Now write the page.  There's no need for smgr to schedule an fsync for
	 * this write; we'll do it ourselves before ending the build.
	 */
	if (blkno == wstate->btws_pages_written)
	{
		/* extending the file... */
		FUNC5(wstate->index->rd_smgr, MAIN_FORKNUM, blkno,
				   (char *) page, true);
		wstate->btws_pages_written++;
	}
	else
	{
		/* overwriting a block we zero-filled before */
		FUNC6(wstate->index->rd_smgr, MAIN_FORKNUM, blkno,
				  (char *) page, true);
	}

	FUNC4(page);
}