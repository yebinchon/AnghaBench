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
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {int fullScan; int /*<<< orphan*/  itemptr; } ;
struct TYPE_12__ {void* buffer; } ;
struct TYPE_11__ {int isFinished; int offset; int nlist; void* buffer; int /*<<< orphan*/ * list; TYPE_5__ btree; int /*<<< orphan*/  curItem; } ;
struct TYPE_10__ {int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  Snapshot ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  TYPE_1__ GinState ;
typedef  TYPE_2__* GinScanEntry ;
typedef  TYPE_3__ GinBtreeStack ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/  FirstOffsetNumber ; 
 int GIN_DELETED ; 
 int /*<<< orphan*/  GIN_SHARE ; 
 int /*<<< orphan*/  GIN_UNLOCK ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_9__* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* InvalidBuffer ; 
 int InvalidOffsetNumber ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (void*) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC18 (TYPE_5__*,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC19 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC21(GinState *ginstate, GinScanEntry entry,
				   ItemPointerData advancePast, Snapshot snapshot)
{
	Page		page;
	int			i;
	bool		stepright;

	if (!FUNC1(entry->buffer))
	{
		entry->isFinished = true;
		return;
	}

	/*
	 * We have two strategies for finding the correct page: step right from
	 * the current page, or descend the tree again from the root. If
	 * advancePast equals the current item, the next matching item should be
	 * on the next page, so we step right. Otherwise, descend from root.
	 */
	if (FUNC17(&entry->curItem, &advancePast) == 0)
	{
		stepright = true;
		FUNC11(entry->buffer, GIN_SHARE);
	}
	else
	{
		GinBtreeStack *stack;

		FUNC13(entry->buffer);

		/*
		 * Set the search key, and find the correct leaf page.
		 */
		if (FUNC9(&advancePast))
		{
			FUNC10(&entry->btree.itemptr,
						   FUNC4(&advancePast) + 1,
						   FirstOffsetNumber);
		}
		else
		{
			FUNC10(&entry->btree.itemptr,
						   FUNC4(&advancePast),
						   FUNC12(FUNC5(&advancePast)));
		}
		entry->btree.fullScan = false;
		stack = FUNC18(&entry->btree, true, false, snapshot);

		/* we don't need the stack, just the buffer. */
		entry->buffer = stack->buffer;
		FUNC8(entry->buffer);
		FUNC16(stack);
		stepright = false;
	}

	FUNC15(DEBUG2, "entryLoadMoreItems, %u/%u, skip: %d",
		 FUNC4(&advancePast),
		 FUNC5(&advancePast),
		 !stepright);

	page = FUNC0(entry->buffer);
	for (;;)
	{
		entry->offset = InvalidOffsetNumber;
		if (entry->list)
		{
			FUNC20(entry->list);
			entry->list = NULL;
			entry->nlist = 0;
		}

		if (stepright)
		{
			/*
			 * We've processed all the entries on this page. If it was the
			 * last page in the tree, we're done.
			 */
			if (FUNC7(page))
			{
				FUNC14(entry->buffer);
				entry->buffer = InvalidBuffer;
				entry->isFinished = true;
				return;
			}

			/*
			 * Step to next page, following the right link. then find the
			 * first ItemPointer greater than advancePast.
			 */
			entry->buffer = FUNC19(entry->buffer,
										 ginstate->index,
										 GIN_SHARE);
			page = FUNC0(entry->buffer);
		}
		stepright = true;

		if (FUNC6(page)->flags & GIN_DELETED)
			continue;			/* page was deleted by concurrent vacuum */

		/*
		 * The first item > advancePast might not be on this page, but
		 * somewhere to the right, if the page was split, or a non-match from
		 * another key in the query allowed us to skip some items from this
		 * entry. Keep following the right-links until we re-find the correct
		 * page.
		 */
		if (!FUNC7(page) &&
			FUNC17(&advancePast, FUNC3(page)) >= 0)
		{
			/*
			 * the item we're looking is > the right bound of the page, so it
			 * can't be on this page.
			 */
			continue;
		}

		entry->list = FUNC2(page, &entry->nlist, advancePast);

		for (i = 0; i < entry->nlist; i++)
		{
			if (FUNC17(&advancePast, &entry->list[i]) < 0)
			{
				entry->offset = i;

				if (FUNC7(page))
				{
					/* after processing the copied items, we're done. */
					FUNC14(entry->buffer);
					entry->buffer = InvalidBuffer;
				}
				else
					FUNC11(entry->buffer, GIN_UNLOCK);
				return;
			}
		}
	}
}