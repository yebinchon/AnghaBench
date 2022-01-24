#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  allocatedMemory; int /*<<< orphan*/  tree; } ;
struct TYPE_5__ {int maxcount; int count; int shouldSort; int /*<<< orphan*/ * list; int /*<<< orphan*/  key; scalar_t__ category; int /*<<< orphan*/  attnum; } ;
typedef  int /*<<< orphan*/  RBTNode ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/ * ItemPointer ;
typedef  scalar_t__ GinNullCategory ;
typedef  TYPE_1__ GinEntryAccumulator ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_2__ BuildAccumulator ;

/* Variables and functions */
 int DEF_NPTR ; 
 scalar_t__ GIN_CAT_NORM_KEY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static void
FUNC4(BuildAccumulator *accum,
				 ItemPointer heapptr, OffsetNumber attnum,
				 Datum key, GinNullCategory category)
{
	GinEntryAccumulator eatmp;
	GinEntryAccumulator *ea;
	bool		isNew;

	/*
	 * For the moment, fill only the fields of eatmp that will be looked at by
	 * cmpEntryAccumulator or ginCombineData.
	 */
	eatmp.attnum = attnum;
	eatmp.key = key;
	eatmp.category = category;
	/* temporarily set up single-entry itempointer list */
	eatmp.list = heapptr;

	ea = (GinEntryAccumulator *) FUNC3(accum->tree, (RBTNode *) &eatmp,
											&isNew);

	if (isNew)
	{
		/*
		 * Finish initializing new tree entry, including making permanent
		 * copies of the datum (if it's not null) and itempointer.
		 */
		if (category == GIN_CAT_NORM_KEY)
			ea->key = FUNC1(accum, attnum, key);
		ea->maxcount = DEF_NPTR;
		ea->count = 1;
		ea->shouldSort = false;
		ea->list =
			(ItemPointerData *) FUNC2(sizeof(ItemPointerData) * DEF_NPTR);
		ea->list[0] = *heapptr;
		accum->allocatedMemory += FUNC0(ea->list);
	}
	else
	{
		/*
		 * ginCombineData did everything needed.
		 */
	}
}