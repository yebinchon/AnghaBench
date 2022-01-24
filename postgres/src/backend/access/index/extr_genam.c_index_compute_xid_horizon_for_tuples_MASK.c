#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_2__ {int /*<<< orphan*/  t_tid; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  OffsetNumber ;
typedef  int /*<<< orphan*/  ItemPointerData ;
typedef  int /*<<< orphan*/  ItemId ;
typedef  TYPE_1__* IndexTuple ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

TransactionId
FUNC7(Relation irel,
									 Relation hrel,
									 Buffer ibuf,
									 OffsetNumber *itemnos,
									 int nitems)
{
	ItemPointerData *ttids =
	(ItemPointerData *) FUNC4(sizeof(ItemPointerData) * nitems);
	TransactionId latestRemovedXid = InvalidTransactionId;
	Page		ipage = FUNC0(ibuf);
	IndexTuple	itup;

	/* identify what the index tuples about to be deleted point to */
	for (int i = 0; i < nitems; i++)
	{
		ItemId		iitemid;

		iitemid = FUNC3(ipage, itemnos[i]);
		itup = (IndexTuple) FUNC2(ipage, iitemid);

		FUNC1(&itup->t_tid, &ttids[i]);
	}

	/* determine the actual xid horizon */
	latestRemovedXid =
		FUNC6(hrel, ttids, nitems);

	FUNC5(ttids);

	return latestRemovedXid;
}