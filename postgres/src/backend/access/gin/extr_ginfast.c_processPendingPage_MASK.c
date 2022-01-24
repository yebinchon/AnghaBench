#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  ginstate; } ;
struct TYPE_11__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_10__ {int /*<<< orphan*/  nvalues; int /*<<< orphan*/  categories; int /*<<< orphan*/  keys; } ;
typedef  int /*<<< orphan*/  Page ;
typedef  scalar_t__ OffsetNumber ;
typedef  TYPE_1__ KeyArray ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  TYPE_2__* IndexTuple ;
typedef  int /*<<< orphan*/  GinNullCategory ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_3__ BuildAccumulator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FirstOffsetNumber ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(BuildAccumulator *accum, KeyArray *ka,
				   Page page, OffsetNumber startoff)
{
	ItemPointerData heapptr;
	OffsetNumber i,
				maxoff;
	OffsetNumber attrnum;

	/* reset *ka to empty */
	ka->nvalues = 0;

	maxoff = FUNC7(page);
	FUNC0(maxoff >= FirstOffsetNumber);
	FUNC3(&heapptr);
	attrnum = 0;

	for (i = startoff; i <= maxoff; i = FUNC4(i))
	{
		IndexTuple	itup = (IndexTuple) FUNC5(page, FUNC6(page, i));
		OffsetNumber curattnum;
		Datum		curkey;
		GinNullCategory curcategory;

		/* Check for change of heap TID or attnum */
		curattnum = FUNC10(accum->ginstate, itup);

		if (!FUNC2(&heapptr))
		{
			heapptr = itup->t_tid;
			attrnum = curattnum;
		}
		else if (!(FUNC1(&heapptr, &itup->t_tid) &&
				   curattnum == attrnum))
		{
			/*
			 * ginInsertBAEntries can insert several datums per call, but only
			 * for one heap tuple and one column.  So call it at a boundary,
			 * and reset ka.
			 */
			FUNC9(accum, &heapptr, attrnum,
							   ka->keys, ka->categories, ka->nvalues);
			ka->nvalues = 0;
			heapptr = itup->t_tid;
			attrnum = curattnum;
		}

		/* Add key to KeyArray */
		curkey = FUNC11(accum->ginstate, itup, &curcategory);
		FUNC8(ka, curkey, curcategory);
	}

	/* Dump out all remaining keys */
	FUNC9(accum, &heapptr, attrnum,
					   ka->keys, ka->categories, ka->nvalues);
}