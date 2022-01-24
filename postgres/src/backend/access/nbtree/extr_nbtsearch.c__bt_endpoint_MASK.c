#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {size_t itemIndex; TYPE_2__* items; int /*<<< orphan*/  buf; } ;
struct TYPE_13__ {scalar_t__ currTuples; TYPE_9__ currPos; } ;
struct TYPE_12__ {scalar_t__ tupleOffset; int /*<<< orphan*/  heapTid; } ;
struct TYPE_11__ {scalar_t__ xs_itup; scalar_t__ xs_want_itup; int /*<<< orphan*/  xs_heaptid; int /*<<< orphan*/  xs_snapshot; int /*<<< orphan*/  opaque; int /*<<< orphan*/  indexRelation; } ;
typedef  scalar_t__ ScanDirection ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  scalar_t__ IndexTuple ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  TYPE_2__ BTScanPosItem ;
typedef  TYPE_3__* BTScanOpaque ;
typedef  scalar_t__ BTPageOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__) ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static bool
FUNC21(IndexScanDesc scan, ScanDirection dir)
{
	Relation	rel = scan->indexRelation;
	BTScanOpaque so = (BTScanOpaque) scan->opaque;
	Buffer		buf;
	Page		page;
	BTPageOpaque opaque;
	OffsetNumber start;
	BTScanPosItem *currItem;

	/*
	 * Scan down to the leftmost or rightmost leaf page.  This is a simplified
	 * version of _bt_search().  We don't maintain a stack since we know we
	 * won't need it.
	 */
	buf = FUNC16(rel, 0, FUNC13(dir), scan->xs_snapshot);

	if (!FUNC4(buf))
	{
		/*
		 * Empty index. Lock the whole relation, as nothing finer to lock
		 * exists.
		 */
		FUNC12(rel, scan->xs_snapshot);
		FUNC1(so->currPos);
		return false;
	}

	FUNC11(rel, FUNC2(buf), scan->xs_snapshot);
	page = FUNC3(buf);
	opaque = (BTPageOpaque) FUNC10(page);
	FUNC0(FUNC7(opaque));

	if (FUNC14(dir))
	{
		/* There could be dead pages to the left, so not this: */
		/* Assert(P_LEFTMOST(opaque)); */

		start = FUNC6(opaque);
	}
	else if (FUNC13(dir))
	{
		FUNC0(FUNC8(opaque));

		start = FUNC9(page);
	}
	else
	{
		FUNC20(ERROR, "invalid scan direction: %d", (int) dir);
		start = 0;				/* keep compiler quiet */
	}

	/* remember which buffer we have pinned */
	so->currPos.buf = buf;

	FUNC17(so, dir);

	/*
	 * Now load data from the first page of the scan.
	 */
	if (!FUNC18(scan, dir, start))
	{
		/*
		 * There's no actually-matching data on this page.  Try to advance to
		 * the next page.  Return false if there's no matching data at all.
		 */
		FUNC5(so->currPos.buf, BUFFER_LOCK_UNLOCK);
		if (!FUNC19(scan, dir))
			return false;
	}
	else
	{
		/* Drop the lock, and maybe the pin, on the current page */
		FUNC15(scan, &so->currPos);
	}

	/* OK, itemIndex says what to return */
	currItem = &so->currPos.items[so->currPos.itemIndex];
	scan->xs_heaptid = currItem->heapTid;
	if (scan->xs_want_itup)
		scan->xs_itup = (IndexTuple) (so->currTuples + currItem->tupleOffset);

	return true;
}