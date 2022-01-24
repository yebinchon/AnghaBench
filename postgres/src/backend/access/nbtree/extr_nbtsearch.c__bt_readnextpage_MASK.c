#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ btpo_next; } ;
struct TYPE_14__ {scalar_t__ buf; scalar_t__ currPage; int /*<<< orphan*/  moreLeft; int /*<<< orphan*/  moreRight; } ;
struct TYPE_16__ {TYPE_11__ currPos; } ;
struct TYPE_15__ {int /*<<< orphan*/ * parallel_scan; int /*<<< orphan*/  xs_snapshot; int /*<<< orphan*/  indexRelation; int /*<<< orphan*/  opaque; } ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  scalar_t__ BlockNumber ;
typedef  TYPE_2__* BTScanOpaque ;
typedef  TYPE_3__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_11__) ; 
 scalar_t__ FUNC1 (TYPE_11__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__) ; 
 int /*<<< orphan*/  BT_READ ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ InvalidBuffer ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ P_NONE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC14 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,scalar_t__) ; 
 int FUNC17 (TYPE_1__*,scalar_t__*) ; 
 scalar_t__ FUNC18 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC21(IndexScanDesc scan, BlockNumber blkno, ScanDirection dir)
{
	BTScanOpaque so = (BTScanOpaque) scan->opaque;
	Relation	rel;
	Page		page;
	BTPageOpaque opaque;
	bool		status = true;

	rel = scan->indexRelation;

	if (FUNC12(dir))
	{
		for (;;)
		{
			/*
			 * if we're at end of scan, give up and mark parallel scan as
			 * done, so that all the workers can finish their scan
			 */
			if (blkno == P_NONE || !so->currPos.moreRight)
			{
				FUNC15(scan);
				FUNC0(so->currPos);
				return false;
			}
			/* check for interrupts while we're not holding any buffer lock */
			FUNC5();
			/* step right one page */
			so->currPos.buf = FUNC14(rel, blkno, BT_READ);
			page = FUNC4(so->currPos.buf);
			FUNC13(scan->xs_snapshot, rel, page);
			opaque = (BTPageOpaque) FUNC10(page);
			/* check for deleted page */
			if (!FUNC8(opaque))
			{
				FUNC11(rel, blkno, scan->xs_snapshot);
				/* see if there are any matches on this page */
				/* note that this will clear moreRight if we can stop */
				if (FUNC18(scan, dir, FUNC7(opaque)))
					break;
			}
			else if (scan->parallel_scan != NULL)
			{
				/* allow next page be processed by parallel worker */
				FUNC16(scan, opaque->btpo_next);
			}

			/* nope, keep going */
			if (scan->parallel_scan != NULL)
			{
				FUNC19(rel, so->currPos.buf);
				status = FUNC17(scan, &blkno);
				if (!status)
				{
					FUNC0(so->currPos);
					return false;
				}
			}
			else
			{
				blkno = opaque->btpo_next;
				FUNC19(rel, so->currPos.buf);
			}
		}
	}
	else
	{
		/*
		 * Should only happen in parallel cases, when some other backend
		 * advanced the scan.
		 */
		if (so->currPos.currPage != blkno)
		{
			FUNC2(so->currPos);
			so->currPos.currPage = blkno;
		}

		/*
		 * Walk left to the next page with data.  This is much more complex
		 * than the walk-right case because of the possibility that the page
		 * to our left splits while we are in flight to it, plus the
		 * possibility that the page we were on gets deleted after we leave
		 * it.  See nbtree/README for details.
		 *
		 * It might be possible to rearrange this code to have less overhead
		 * in pinning and locking, but that would require capturing the left
		 * pointer when the page is initially read, and using it here, along
		 * with big changes to _bt_walk_left() and the code below.  It is not
		 * clear whether this would be a win, since if the page immediately to
		 * the left splits after we read this page and before we step left, we
		 * would need to visit more pages than with the current code.
		 *
		 * Note that if we change the code so that we drop the pin for a scan
		 * which uses a non-MVCC snapshot, we will need to modify the code for
		 * walking left, to allow for the possibility that a referenced page
		 * has been deleted.  As long as the buffer is pinned or the snapshot
		 * is MVCC the page cannot move past the half-dead state to fully
		 * deleted.
		 */
		if (FUNC1(so->currPos))
			FUNC6(so->currPos.buf, BT_READ);
		else
			so->currPos.buf = FUNC14(rel, so->currPos.currPage, BT_READ);

		for (;;)
		{
			/* Done if we know there are no matching keys to the left */
			if (!so->currPos.moreLeft)
			{
				FUNC19(rel, so->currPos.buf);
				FUNC15(scan);
				FUNC0(so->currPos);
				return false;
			}

			/* Step to next physical page */
			so->currPos.buf = FUNC20(rel, so->currPos.buf,
											scan->xs_snapshot);

			/* if we're physically at end of index, return failure */
			if (so->currPos.buf == InvalidBuffer)
			{
				FUNC15(scan);
				FUNC0(so->currPos);
				return false;
			}

			/*
			 * Okay, we managed to move left to a non-deleted page. Done if
			 * it's not half-dead and contains matching tuples. Else loop back
			 * and do it all again.
			 */
			page = FUNC4(so->currPos.buf);
			FUNC13(scan->xs_snapshot, rel, page);
			opaque = (BTPageOpaque) FUNC10(page);
			if (!FUNC8(opaque))
			{
				FUNC11(rel, FUNC3(so->currPos.buf), scan->xs_snapshot);
				/* see if there are any matches on this page */
				/* note that this will clear moreLeft if we can stop */
				if (FUNC18(scan, dir, FUNC9(page)))
					break;
			}
			else if (scan->parallel_scan != NULL)
			{
				/* allow next page be processed by parallel worker */
				FUNC16(scan, FUNC3(so->currPos.buf));
			}

			/*
			 * For parallel scans, get the last page scanned as it is quite
			 * possible that by the time we try to seize the scan, some other
			 * worker has already advanced the scan to a different page.  We
			 * must continue based on the latest page scanned by any worker.
			 */
			if (scan->parallel_scan != NULL)
			{
				FUNC19(rel, so->currPos.buf);
				status = FUNC17(scan, &blkno);
				if (!status)
				{
					FUNC0(so->currPos);
					return false;
				}
				so->currPos.buf = FUNC14(rel, blkno, BT_READ);
			}
		}
	}

	return true;
}