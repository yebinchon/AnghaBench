#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  storeRes_func ;
struct TYPE_9__ {int /*<<< orphan*/  pointer; } ;
struct TYPE_8__ {scalar_t__ tupstate; scalar_t__ nextOffset; int /*<<< orphan*/  heapPtr; } ;
struct TYPE_7__ {int /*<<< orphan*/  heapPtr; } ;
typedef  TYPE_1__ SpGistSearchItem ;
typedef  int /*<<< orphan*/  SpGistScanOpaque ;
typedef  TYPE_2__* SpGistLeafTuple ;
typedef  TYPE_3__* SpGistDeadTuple ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOffsetNumber ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ SPGIST_DEAD ; 
 scalar_t__ SPGIST_LIVE ; 
 scalar_t__ SPGIST_METAPAGE_BLKNO ; 
 scalar_t__ SPGIST_REDIRECT ; 
 scalar_t__ SpGistBreakOffsetNumber ; 
 scalar_t__ SpGistErrorOffsetNumber ; 
 scalar_t__ SpGistRedirectOffsetNumber ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_2__*,int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static OffsetNumber
FUNC8(SpGistScanOpaque so,
				 SpGistSearchItem *item,
				 Page page, OffsetNumber offset,
				 bool isnull, bool isroot,
				 bool *reportedSome,
				 storeRes_func storeRes)
{
	SpGistLeafTuple leafTuple = (SpGistLeafTuple)
	FUNC4(page, FUNC5(page, offset));

	if (leafTuple->tupstate != SPGIST_LIVE)
	{
		if (!isroot)			/* all tuples on root should be live */
		{
			if (leafTuple->tupstate == SPGIST_REDIRECT)
			{
				/* redirection tuple should be first in chain */
				FUNC0(offset == FUNC2(&item->heapPtr));
				/* transfer attention to redirect point */
				item->heapPtr = ((SpGistDeadTuple) leafTuple)->pointer;
				FUNC0(FUNC1(&item->heapPtr) != SPGIST_METAPAGE_BLKNO);
				return SpGistRedirectOffsetNumber;
			}

			if (leafTuple->tupstate == SPGIST_DEAD)
			{
				/* dead tuple should be first in chain */
				FUNC0(offset == FUNC2(&item->heapPtr));
				/* No live entries on this page */
				FUNC0(leafTuple->nextOffset == InvalidOffsetNumber);
				return SpGistBreakOffsetNumber;
			}
		}

		/* We should not arrive at a placeholder */
		FUNC6(ERROR, "unexpected SPGiST tuple state: %d", leafTuple->tupstate);
		return SpGistErrorOffsetNumber;
	}

	FUNC0(FUNC3(&leafTuple->heapPtr));

	FUNC7(so, item, leafTuple, isnull, reportedSome, storeRes);

	return leafTuple->nextOffset;
}