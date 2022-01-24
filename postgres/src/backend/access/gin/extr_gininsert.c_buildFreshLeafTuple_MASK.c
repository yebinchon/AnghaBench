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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;
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
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GinMaxItemSize ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static IndexTuple
FUNC6(GinState *ginstate,
					OffsetNumber attnum, Datum key, GinNullCategory category,
					ItemPointerData *items, uint32 nitem,
					GinStatsData *buildStats, Buffer buffer)
{
	IndexTuple	res = NULL;
	GinPostingList *compressedList;

	/* try to build a posting list tuple with all the items */
	compressedList = FUNC4(items, nitem, GinMaxItemSize, NULL);
	if (compressedList)
	{
		res = FUNC0(ginstate, attnum, key, category,
						   (char *) compressedList,
						   FUNC2(compressedList),
						   nitem, false);
		FUNC5(compressedList);
	}
	if (!res)
	{
		/* posting list would be too big, build posting tree */
		BlockNumber postingRoot;

		/*
		 * Build posting-tree-only result tuple.  We do this first so as to
		 * fail quickly if the key is too big.
		 */
		res = FUNC0(ginstate, attnum, key, category, NULL, 0, 0, true);

		/*
		 * Initialize a new posting tree with the TIDs.
		 */
		postingRoot = FUNC3(ginstate->index, items, nitem,
										buildStats, buffer);

		/* And save the root link in the result tuple */
		FUNC1(res, postingRoot);
	}

	return res;
}