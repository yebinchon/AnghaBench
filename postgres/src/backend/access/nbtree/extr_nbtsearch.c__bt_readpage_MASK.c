#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  btpo_next; } ;
struct TYPE_11__ {int moreRight; int firstItem; int lastItem; int itemIndex; int moreLeft; scalar_t__ nextTupleOffset; int /*<<< orphan*/  nextPage; int /*<<< orphan*/  buf; int /*<<< orphan*/  lsn; int /*<<< orphan*/  currPage; } ;
struct TYPE_13__ {TYPE_10__ currPos; } ;
struct TYPE_12__ {scalar_t__ ignore_killed_tuples; int /*<<< orphan*/  indexRelation; scalar_t__ parallel_scan; int /*<<< orphan*/  opaque; } ;
typedef  int /*<<< orphan*/  ScanDirection ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  scalar_t__ IndexTuple ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  TYPE_2__* BTScanOpaque ;
typedef  TYPE_3__* BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_10__) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 
 int MaxIndexTuplesPerPage ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 scalar_t__ P_HIKEY ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (TYPE_1__*,scalar_t__,int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC23(IndexScanDesc scan, ScanDirection dir, OffsetNumber offnum)
{
	BTScanOpaque so = (BTScanOpaque) scan->opaque;
	Page		page;
	BTPageOpaque opaque;
	OffsetNumber minoff;
	OffsetNumber maxoff;
	int			itemIndex;
	bool		continuescan;
	int			indnatts;

	/*
	 * We must have the buffer pinned and locked, but the usual macro can't be
	 * used here; this function is what makes it good for currPos.
	 */
	FUNC0(FUNC6(so->currPos.buf));

	page = FUNC5(so->currPos.buf);
	opaque = (BTPageOpaque) FUNC18(page);

	/* allow next page be processed by parallel worker */
	if (scan->parallel_scan)
	{
		if (FUNC19(dir))
			FUNC21(scan, opaque->btpo_next);
		else
			FUNC21(scan, FUNC3(so->currPos.buf));
	}

	continuescan = true;		/* default assumption */
	indnatts = FUNC7(scan->indexRelation);
	minoff = FUNC13(opaque);
	maxoff = FUNC17(page);

	/*
	 * We note the buffer's block number so that we can release the pin later.
	 * This allows us to re-read the buffer if it is needed again for hinting.
	 */
	so->currPos.currPage = FUNC3(so->currPos.buf);

	/*
	 * We save the LSN of the page as we read it, so that we know whether it
	 * safe to apply LP_DEAD hints to the page later.  This allows us to drop
	 * the pin for MVCC scans, which allows vacuum to avoid blocking.
	 */
	so->currPos.lsn = FUNC4(so->currPos.buf);

	/*
	 * we must save the page's right-link while scanning it; this tells us
	 * where to step right to after we're done with these items.  There is no
	 * corresponding need for the left-link, since splits always go right.
	 */
	so->currPos.nextPage = opaque->btpo_next;

	/* initialize tuple workspace to empty */
	so->currPos.nextTupleOffset = 0;

	/*
	 * Now that the current page has been made consistent, the macro should be
	 * good.
	 */
	FUNC0(FUNC1(so->currPos));

	if (FUNC19(dir))
	{
		/* load items[] in ascending order */
		itemIndex = 0;

		offnum = FUNC9(offnum, minoff);

		while (offnum <= maxoff)
		{
			ItemId		iid = FUNC16(page, offnum);
			IndexTuple	itup;

			/*
			 * If the scan specifies not to return killed tuples, then we
			 * treat a killed tuple as not passing the qual
			 */
			if (scan->ignore_killed_tuples && FUNC8(iid))
			{
				offnum = FUNC11(offnum);
				continue;
			}

			itup = (IndexTuple) FUNC15(page, iid);

			if (FUNC20(scan, itup, indnatts, dir, &continuescan))
			{
				/* tuple passes all scan key conditions, so remember it */
				FUNC22(so, itemIndex, offnum, itup);
				itemIndex++;
			}
			/* When !continuescan, there can't be any more matches, so stop */
			if (!continuescan)
				break;

			offnum = FUNC11(offnum);
		}

		/*
		 * We don't need to visit page to the right when the high key
		 * indicates that no more matches will be found there.
		 *
		 * Checking the high key like this works out more often than you might
		 * think.  Leaf page splits pick a split point between the two most
		 * dissimilar tuples (this is weighed against the need to evenly share
		 * free space).  Leaf pages with high key attribute values that can
		 * only appear on non-pivot tuples on the right sibling page are
		 * common.
		 */
		if (continuescan && !FUNC14(opaque))
		{
			ItemId		iid = FUNC16(page, P_HIKEY);
			IndexTuple	itup = (IndexTuple) FUNC15(page, iid);
			int			truncatt;

			truncatt = FUNC2(itup, scan->indexRelation);
			FUNC20(scan, itup, truncatt, dir, &continuescan);
		}

		if (!continuescan)
			so->currPos.moreRight = false;

		FUNC0(itemIndex <= MaxIndexTuplesPerPage);
		so->currPos.firstItem = 0;
		so->currPos.lastItem = itemIndex - 1;
		so->currPos.itemIndex = 0;
	}
	else
	{
		/* load items[] in descending order */
		itemIndex = MaxIndexTuplesPerPage;

		offnum = FUNC10(offnum, maxoff);

		while (offnum >= minoff)
		{
			ItemId		iid = FUNC16(page, offnum);
			IndexTuple	itup;
			bool		tuple_alive;
			bool		passes_quals;

			/*
			 * If the scan specifies not to return killed tuples, then we
			 * treat a killed tuple as not passing the qual.  Most of the
			 * time, it's a win to not bother examining the tuple's index
			 * keys, but just skip to the next tuple (previous, actually,
			 * since we're scanning backwards).  However, if this is the first
			 * tuple on the page, we do check the index keys, to prevent
			 * uselessly advancing to the page to the left.  This is similar
			 * to the high key optimization used by forward scans.
			 */
			if (scan->ignore_killed_tuples && FUNC8(iid))
			{
				FUNC0(offnum >= FUNC13(opaque));
				if (offnum > FUNC13(opaque))
				{
					offnum = FUNC12(offnum);
					continue;
				}

				tuple_alive = false;
			}
			else
				tuple_alive = true;

			itup = (IndexTuple) FUNC15(page, iid);

			passes_quals = FUNC20(scan, itup, indnatts, dir,
										 &continuescan);
			if (passes_quals && tuple_alive)
			{
				/* tuple passes all scan key conditions, so remember it */
				itemIndex--;
				FUNC22(so, itemIndex, offnum, itup);
			}
			if (!continuescan)
			{
				/* there can't be any more matches, so stop */
				so->currPos.moreLeft = false;
				break;
			}

			offnum = FUNC12(offnum);
		}

		FUNC0(itemIndex >= 0);
		so->currPos.firstItem = itemIndex;
		so->currPos.lastItem = MaxIndexTuplesPerPage - 1;
		so->currPos.itemIndex = MaxIndexTuplesPerPage - 1;
	}

	return (so->currPos.firstItem <= so->currPos.lastItem);
}