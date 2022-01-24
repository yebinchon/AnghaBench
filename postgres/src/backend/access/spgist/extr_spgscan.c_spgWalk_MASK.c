#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* storeRes_func ) (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
struct TYPE_21__ {int /*<<< orphan*/  pointer; } ;
struct TYPE_20__ {scalar_t__ tupstate; } ;
struct TYPE_19__ {int /*<<< orphan*/  heapPtr; int /*<<< orphan*/  distances; int /*<<< orphan*/  recheckDistances; int /*<<< orphan*/  recheck; int /*<<< orphan*/  isNull; int /*<<< orphan*/  value; scalar_t__ isLeaf; } ;
struct TYPE_18__ {scalar_t__ numberOfNonNullOrderBys; int /*<<< orphan*/  tempCxt; } ;
typedef  TYPE_2__ SpGistSearchItem ;
typedef  TYPE_1__* SpGistScanOpaque ;
typedef  TYPE_4__* SpGistInnerTuple ;
typedef  TYPE_5__* SpGistDeadTuple ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  scalar_t__ Buffer ;
typedef  scalar_t__ BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BUFFER_LOCK_SHARE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstOffsetNumber ; 
 scalar_t__ InvalidBuffer ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SPGIST_LIVE ; 
 scalar_t__ SPGIST_METAPAGE_BLKNO ; 
 scalar_t__ SPGIST_REDIRECT ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ SpGistRedirectOffsetNumber ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,TYPE_2__*,TYPE_4__*,int) ; 
 scalar_t__ FUNC21 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int,int,int*,int /*<<< orphan*/  (*) (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ )) ; 

__attribute__((used)) static void
FUNC22(Relation index, SpGistScanOpaque so, bool scanWholeIndex,
		storeRes_func storeRes, Snapshot snapshot)
{
	Buffer		buffer = InvalidBuffer;
	bool		reportedSome = false;

	while (scanWholeIndex || !reportedSome)
	{
		SpGistSearchItem *item = FUNC19(so);

		if (item == NULL)
			break;				/* No more items in queue -> done */

redirect:
		/* Check for interrupts, just in case of infinite loop */
		FUNC3();

		if (item->isLeaf)
		{
			/* We store heap items in the queue only in case of ordered search */
			FUNC0(so->numberOfNonNullOrderBys > 0);
			storeRes(so, &item->heapPtr, item->value, item->isNull,
					 item->recheck, item->recheckDistances, item->distances);
			reportedSome = true;
		}
		else
		{
			BlockNumber blkno = FUNC4(&item->heapPtr);
			OffsetNumber offset = FUNC5(&item->heapPtr);
			Page		page;
			bool		isnull;

			if (buffer == InvalidBuffer)
			{
				buffer = FUNC11(index, blkno);
				FUNC6(buffer, BUFFER_LOCK_SHARE);
			}
			else if (blkno != FUNC1(buffer))
			{
				FUNC16(buffer);
				buffer = FUNC11(index, blkno);
				FUNC6(buffer, BUFFER_LOCK_SHARE);
			}

			/* else new pointer points to the same page, no work needed */

			page = FUNC2(buffer);
			FUNC15(snapshot, index, page);

			isnull = FUNC14(page) ? true : false;

			if (FUNC13(page))
			{
				/* Page is a leaf - that is, all it's tuples are heap items */
				OffsetNumber max = FUNC10(page);

				if (FUNC12(blkno))
				{
					/* When root is a leaf, examine all its tuples */
					for (offset = FirstOffsetNumber; offset <= max; offset++)
						(void) FUNC21(so, item, page, offset,
												isnull, true,
												&reportedSome, storeRes);
				}
				else
				{
					/* Normal case: just examine the chain we arrived at */
					while (offset != InvalidOffsetNumber)
					{
						FUNC0(offset >= FirstOffsetNumber && offset <= max);
						offset = FUNC21(so, item, page, offset,
												  isnull, false,
												  &reportedSome, storeRes);
						if (offset == SpGistRedirectOffsetNumber)
							goto redirect;
					}
				}
			}
			else				/* page is inner */
			{
				SpGistInnerTuple innerTuple = (SpGistInnerTuple)
				FUNC8(page, FUNC9(page, offset));

				if (innerTuple->tupstate != SPGIST_LIVE)
				{
					if (innerTuple->tupstate == SPGIST_REDIRECT)
					{
						/* transfer attention to redirect point */
						item->heapPtr = ((SpGistDeadTuple) innerTuple)->pointer;
						FUNC0(FUNC4(&item->heapPtr) !=
							   SPGIST_METAPAGE_BLKNO);
						goto redirect;
					}
					FUNC17(ERROR, "unexpected SPGiST tuple state: %d",
						 innerTuple->tupstate);
				}

				FUNC20(so, item, innerTuple, isnull);
			}
		}

		/* done with this scan item */
		FUNC18(so, item);
		/* clear temp context before proceeding to the next one */
		FUNC7(so->tempCxt);
	}

	if (buffer != InvalidBuffer)
		FUNC16(buffer);
}