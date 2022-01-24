#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int lastItem; int moreLeft; int moreRight; int /*<<< orphan*/  currPage; int /*<<< orphan*/  nextPage; scalar_t__ nextTupleOffset; int /*<<< orphan*/  buf; } ;
struct TYPE_17__ {int itemIndex; } ;
struct TYPE_16__ {scalar_t__ numKilled; int markItemIndex; TYPE_4__ currPos; TYPE_3__ markPos; TYPE_4__* currTuples; TYPE_3__* markTuples; } ;
struct TYPE_15__ {int /*<<< orphan*/ * parallel_scan; int /*<<< orphan*/  opaque; } ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  int /*<<< orphan*/  BlockNumber ;
typedef  int /*<<< orphan*/  BTScanPosItem ;
typedef  TYPE_2__* BTScanOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTScanPosData ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__) ; 
 scalar_t__ FUNC2 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidBlockNumber ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * items ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_4__*,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC13(IndexScanDesc scan, ScanDirection dir)
{
	BTScanOpaque so = (BTScanOpaque) scan->opaque;
	BlockNumber blkno = InvalidBlockNumber;
	bool		status = true;

	FUNC0(FUNC3(so->currPos));

	/* Before leaving current page, deal with any killed items */
	if (so->numKilled > 0)
		FUNC8(scan);

	/*
	 * Before we modify currPos, make a copy of the page data if there was a
	 * mark position that needs it.
	 */
	if (so->markItemIndex >= 0)
	{
		/* bump pin on current buffer for assignment to mark buffer */
		if (FUNC2(so->currPos))
			FUNC5(so->currPos.buf);
		FUNC11(&so->markPos, &so->currPos,
			   FUNC12(BTScanPosData, items[1]) +
			   so->currPos.lastItem * sizeof(BTScanPosItem));
		if (so->markTuples)
			FUNC11(so->markTuples, so->currTuples,
				   so->currPos.nextTupleOffset);
		so->markPos.itemIndex = so->markItemIndex;
		so->markItemIndex = -1;
	}

	if (FUNC6(dir))
	{
		/* Walk right to the next page with data */
		if (scan->parallel_scan != NULL)
		{
			/*
			 * Seize the scan to get the next block number; if the scan has
			 * ended already, bail out.
			 */
			status = FUNC9(scan, &blkno);
			if (!status)
			{
				/* release the previous buffer, if pinned */
				FUNC4(so->currPos);
				FUNC1(so->currPos);
				return false;
			}
		}
		else
		{
			/* Not parallel, so use the previously-saved nextPage link. */
			blkno = so->currPos.nextPage;
		}

		/* Remember we left a page with data */
		so->currPos.moreLeft = true;

		/* release the previous buffer, if pinned */
		FUNC4(so->currPos);
	}
	else
	{
		/* Remember we left a page with data */
		so->currPos.moreRight = true;

		if (scan->parallel_scan != NULL)
		{
			/*
			 * Seize the scan to get the current block number; if the scan has
			 * ended already, bail out.
			 */
			status = FUNC9(scan, &blkno);
			FUNC4(so->currPos);
			if (!status)
			{
				FUNC1(so->currPos);
				return false;
			}
		}
		else
		{
			/* Not parallel, so just use our own notion of the current page */
			blkno = so->currPos.currPage;
		}
	}

	if (!FUNC10(scan, blkno, dir))
		return false;

	/* Drop the lock, and maybe the pin, on the current page */
	FUNC7(scan, &so->currPos);

	return true;
}