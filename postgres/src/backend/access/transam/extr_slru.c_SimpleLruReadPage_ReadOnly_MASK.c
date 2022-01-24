#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_7__ {TYPE_1__* shared; } ;
struct TYPE_6__ {int num_slots; int* page_number; scalar_t__* page_status; int /*<<< orphan*/  ControlLock; } ;
typedef  TYPE_1__* SlruShared ;
typedef  TYPE_2__* SlruCtl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  LW_SHARED ; 
 scalar_t__ SLRU_PAGE_EMPTY ; 
 scalar_t__ SLRU_PAGE_READ_IN_PROGRESS ; 
 int FUNC2 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

int
FUNC4(SlruCtl ctl, int pageno, TransactionId xid)
{
	SlruShared	shared = ctl->shared;
	int			slotno;

	/* Try to find the page while holding only shared lock */
	FUNC0(shared->ControlLock, LW_SHARED);

	/* See if page is already in a buffer */
	for (slotno = 0; slotno < shared->num_slots; slotno++)
	{
		if (shared->page_number[slotno] == pageno &&
			shared->page_status[slotno] != SLRU_PAGE_EMPTY &&
			shared->page_status[slotno] != SLRU_PAGE_READ_IN_PROGRESS)
		{
			/* See comments for SlruRecentlyUsed macro */
			FUNC3(shared, slotno);
			return slotno;
		}
	}

	/* No luck, so switch to normal exclusive lock and do regular read */
	FUNC1(shared->ControlLock);
	FUNC0(shared->ControlLock, LW_EXCLUSIVE);

	return FUNC2(ctl, pageno, true, xid);
}