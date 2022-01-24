#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ (* NextSampleBlock ) (TYPE_3__*,scalar_t__) ;} ;
typedef  TYPE_1__ TsmRoutine ;
typedef  TYPE_2__* TableScanDesc ;
struct TYPE_12__ {scalar_t__ rs_nblocks; scalar_t__ rs_cblock; int rs_inited; scalar_t__ rs_startblock; int /*<<< orphan*/  rs_cbuf; } ;
struct TYPE_11__ {TYPE_1__* tsmroutine; } ;
struct TYPE_10__ {int rs_flags; int /*<<< orphan*/  rs_rd; } ;
typedef  TYPE_3__ SampleScanState ;
typedef  TYPE_4__* HeapScanDesc ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ InvalidBlockNumber ; 
 int /*<<< orphan*/  InvalidBuffer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int SO_ALLOW_SYNC ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_3__*,scalar_t__) ; 

__attribute__((used)) static bool
FUNC7(TableScanDesc scan, SampleScanState *scanstate)
{
	HeapScanDesc hscan = (HeapScanDesc) scan;
	TsmRoutine *tsm = scanstate->tsmroutine;
	BlockNumber blockno;

	/* return false immediately if relation is empty */
	if (hscan->rs_nblocks == 0)
		return false;

	if (tsm->NextSampleBlock)
	{
		blockno = tsm->NextSampleBlock(scanstate, hscan->rs_nblocks);
		hscan->rs_cblock = blockno;
	}
	else
	{
		/* scanning table sequentially */

		if (hscan->rs_cblock == InvalidBlockNumber)
		{
			FUNC0(!hscan->rs_inited);
			blockno = hscan->rs_startblock;
		}
		else
		{
			FUNC0(hscan->rs_inited);

			blockno = hscan->rs_cblock + 1;

			if (blockno >= hscan->rs_nblocks)
			{
				/* wrap to beginning of rel, might not have started at 0 */
				blockno = 0;
			}

			/*
			 * Report our new scan position for synchronization purposes.
			 *
			 * Note: we do this before checking for end of scan so that the
			 * final state of the position hint is back at the start of the
			 * rel.  That's not strictly necessary, but otherwise when you run
			 * the same query multiple times the starting position would shift
			 * a little bit backwards on every invocation, which is confusing.
			 * We don't guarantee any specific ordering in general, though.
			 */
			if (scan->rs_flags & SO_ALLOW_SYNC)
				FUNC5(scan->rs_rd, blockno);

			if (blockno == hscan->rs_startblock)
			{
				blockno = InvalidBlockNumber;
			}
		}
	}

	if (!FUNC1(blockno))
	{
		if (FUNC2(hscan->rs_cbuf))
			FUNC3(hscan->rs_cbuf);
		hscan->rs_cbuf = InvalidBuffer;
		hscan->rs_cblock = InvalidBlockNumber;
		hscan->rs_inited = false;

		return false;
	}

	FUNC4(scan, blockno);
	hscan->rs_inited = true;

	return true;
}