#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_7__ {int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/ * IndexTuple ;
typedef  int /*<<< orphan*/  GinStatsData ;
typedef  TYPE_1__ GinState ;
typedef  int /*<<< orphan*/  GinPostingList ;
typedef  int /*<<< orphan*/  GinNullCategory ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  BlockNumber ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GinMaxItemSize ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static IndexTuple
FUNC13(GinState *ginstate,
						   IndexTuple old,
						   ItemPointerData *items, uint32 nitem,
						   GinStatsData *buildStats, Buffer buffer)
{
	OffsetNumber attnum;
	Datum		key;
	GinNullCategory category;
	IndexTuple	res;
	ItemPointerData *newItems,
			   *oldItems;
	int			oldNPosting,
				newNPosting;
	GinPostingList *compressedList;

	FUNC0(!FUNC2(old));

	attnum = FUNC10(ginstate, old);
	key = FUNC11(ginstate, old, &category);

	/* merge the old and new posting lists */
	oldItems = FUNC9(ginstate, attnum, old, &oldNPosting);

	newItems = FUNC8(items, nitem,
									oldItems, oldNPosting,
									&newNPosting);

	/* Compress the posting list, and try to a build tuple with room for it */
	res = NULL;
	compressedList = FUNC6(newItems, newNPosting, GinMaxItemSize,
											NULL);
	FUNC12(newItems);
	if (compressedList)
	{
		res = FUNC1(ginstate, attnum, key, category,
						   (char *) compressedList,
						   FUNC4(compressedList),
						   newNPosting,
						   false);
		FUNC12(compressedList);
	}
	if (!res)
	{
		/* posting list would be too big, convert to posting tree */
		BlockNumber postingRoot;

		/*
		 * Initialize posting tree with the old tuple's posting list.  It's
		 * surely small enough to fit on one posting-tree page, and should
		 * already be in order with no duplicates.
		 */
		postingRoot = FUNC5(ginstate->index,
										oldItems,
										oldNPosting,
										buildStats,
										buffer);

		/* Now insert the TIDs-to-be-added into the posting tree */
		FUNC7(ginstate->index, postingRoot,
							  items, nitem,
							  buildStats);

		/* And build a new posting-tree-only result tuple */
		res = FUNC1(ginstate, attnum, key, category, NULL, 0, 0, true);
		FUNC3(res, postingRoot);
	}
	FUNC12(oldItems);

	return res;
}