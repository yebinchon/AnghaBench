#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32 ;
struct TYPE_4__ {int /*<<< orphan*/  index; int /*<<< orphan*/  ginstate; } ;
typedef  int /*<<< orphan*/ * Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  int /*<<< orphan*/  Item ;
typedef  int /*<<< orphan*/ * IndexTuple ;
typedef  TYPE_1__ GinVacuumState ;
typedef  int /*<<< orphan*/  GinPostingList ;
typedef  int /*<<< orphan*/  GinNullCategory ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FirstOffsetNumber ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GinMaxItemSize ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC19 (TYPE_1__*,int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Page
FUNC23(GinVacuumState *gvs, Buffer buffer, BlockNumber *roots, uint32 *nroot)
{
	Page		origpage = FUNC0(buffer),
				tmppage;
	OffsetNumber i,
				maxoff = FUNC11(origpage);

	tmppage = origpage;

	*nroot = 0;

	for (i = FirstOffsetNumber; i <= maxoff; i++)
	{
		IndexTuple	itup = (IndexTuple) FUNC9(tmppage, FUNC10(tmppage, i));

		if (FUNC5(itup))
		{
			/*
			 * store posting tree's roots for further processing, we can't
			 * vacuum it just now due to risk of deadlocks with scans/inserts
			 */
			roots[*nroot] = FUNC2(itup);
			(*nroot)++;
		}
		else if (FUNC3(itup) > 0)
		{
			int			nitems;
			ItemPointer items_orig;
			bool		free_items_orig;
			ItemPointer items;

			/* Get list of item pointers from the tuple. */
			if (FUNC6(itup))
			{
				items_orig = FUNC18((GinPostingList *) FUNC4(itup), &nitems);
				free_items_orig = true;
			}
			else
			{
				items_orig = (ItemPointer) FUNC4(itup);
				nitems = FUNC3(itup);
				free_items_orig = false;
			}

			/* Remove any items from the list that need to be vacuumed. */
			items = FUNC19(gvs, items_orig, nitems, &nitems);

			if (free_items_orig)
				FUNC22(items_orig);

			/* If any item pointers were removed, recreate the tuple. */
			if (items)
			{
				OffsetNumber attnum;
				Datum		key;
				GinNullCategory category;
				GinPostingList *plist;
				int			plistsize;

				if (nitems > 0)
				{
					plist = FUNC17(items, nitems, GinMaxItemSize, NULL);
					plistsize = FUNC15(plist);
				}
				else
				{
					plist = NULL;
					plistsize = 0;
				}

				/*
				 * if we already created a temporary page, make changes in
				 * place
				 */
				if (tmppage == origpage)
				{
					/*
					 * On first difference, create a temporary copy of the
					 * page and copy the tuple's posting list to it.
					 */
					tmppage = FUNC12(origpage);

					/* set itup pointer to new page */
					itup = (IndexTuple) FUNC9(tmppage, FUNC10(tmppage, i));
				}

				attnum = FUNC20(&gvs->ginstate, itup);
				key = FUNC21(&gvs->ginstate, itup, &category);
				itup = FUNC1(&gvs->ginstate, attnum, key, category,
									(char *) plist, plistsize,
									nitems, true);
				if (plist)
					FUNC22(plist);
				FUNC13(tmppage, i);

				if (FUNC8(tmppage, (Item) itup, FUNC7(itup), i, false, false) != i)
					FUNC16(ERROR, "failed to add item to index page in \"%s\"",
						 FUNC14(gvs->index));

				FUNC22(itup);
				FUNC22(items);
			}
		}
	}

	return (tmppage == origpage) ? NULL : tmppage;
}