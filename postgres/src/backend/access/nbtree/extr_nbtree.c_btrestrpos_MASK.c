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

/* Type definitions */
struct TYPE_14__ {scalar_t__ itemIndex; int lastItem; scalar_t__ nextTupleOffset; int /*<<< orphan*/  buf; } ;
struct TYPE_13__ {scalar_t__ markItemIndex; scalar_t__ numKilled; TYPE_3__ currPos; TYPE_3__ markPos; TYPE_3__* markTuples; TYPE_3__* currTuples; scalar_t__ numArrayKeys; } ;
struct TYPE_12__ {int /*<<< orphan*/  opaque; } ;
typedef  TYPE_1__* IndexScanDesc ;
typedef  int /*<<< orphan*/  BTScanPosItem ;
typedef  TYPE_2__* BTScanOpaque ;

/* Variables and functions */
 int /*<<< orphan*/  BTScanPosData ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__) ; 
 scalar_t__ FUNC1 (TYPE_3__) ; 
 scalar_t__ FUNC2 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * items ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(IndexScanDesc scan)
{
	BTScanOpaque so = (BTScanOpaque) scan->opaque;

	/* Restore the marked positions of any array keys */
	if (so->numArrayKeys)
		FUNC6(scan);

	if (so->markItemIndex >= 0)
	{
		/*
		 * The scan has never moved to a new page since the last mark.  Just
		 * restore the itemIndex.
		 *
		 * NB: In this case we can't count on anything in so->markPos to be
		 * accurate.
		 */
		so->currPos.itemIndex = so->markItemIndex;
	}
	else
	{
		/*
		 * The scan moved to a new page after last mark or restore, and we are
		 * now restoring to the marked page.  We aren't holding any read
		 * locks, but if we're still holding the pin for the current position,
		 * we must drop it.
		 */
		if (FUNC2(so->currPos))
		{
			/* Before leaving current page, deal with any killed items */
			if (so->numKilled > 0)
				FUNC5(scan);
			FUNC3(so->currPos);
		}

		if (FUNC2(so->markPos))
		{
			/* bump pin on mark buffer for assignment to current buffer */
			if (FUNC1(so->markPos))
				FUNC4(so->markPos.buf);
			FUNC7(&so->currPos, &so->markPos,
				   FUNC8(BTScanPosData, items[1]) +
				   so->markPos.lastItem * sizeof(BTScanPosItem));
			if (so->currTuples)
				FUNC7(so->currTuples, so->markTuples,
					   so->markPos.nextTupleOffset);
		}
		else
			FUNC0(so->currPos);
	}
}