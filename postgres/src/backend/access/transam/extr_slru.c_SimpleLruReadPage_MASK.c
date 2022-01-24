#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TransactionId ;
struct TYPE_13__ {TYPE_2__* shared; } ;
struct TYPE_12__ {int* page_number; scalar_t__* page_status; int* page_dirty; TYPE_1__* buffer_locks; int /*<<< orphan*/ * ControlLock; } ;
struct TYPE_11__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__* SlruShared ;
typedef  TYPE_3__* SlruCtl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 scalar_t__ SLRU_PAGE_EMPTY ; 
 scalar_t__ SLRU_PAGE_READ_IN_PROGRESS ; 
 scalar_t__ SLRU_PAGE_VALID ; 
 scalar_t__ SLRU_PAGE_WRITE_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int) ; 
 int FUNC5 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_3__*,int) ; 

int
FUNC9(SlruCtl ctl, int pageno, bool write_ok,
				  TransactionId xid)
{
	SlruShared	shared = ctl->shared;

	/* Outer loop handles restart if we must wait for someone else's I/O */
	for (;;)
	{
		int			slotno;
		bool		ok;

		/* See if page already is in memory; if not, pick victim slot */
		slotno = FUNC8(ctl, pageno);

		/* Did we find the page in memory? */
		if (shared->page_number[slotno] == pageno &&
			shared->page_status[slotno] != SLRU_PAGE_EMPTY)
		{
			/*
			 * If page is still being read in, we must wait for I/O.  Likewise
			 * if the page is being written and the caller said that's not OK.
			 */
			if (shared->page_status[slotno] == SLRU_PAGE_READ_IN_PROGRESS ||
				(shared->page_status[slotno] == SLRU_PAGE_WRITE_IN_PROGRESS &&
				 !write_ok))
			{
				FUNC3(ctl, slotno);
				/* Now we must recheck state from the top */
				continue;
			}
			/* Otherwise, it's ready to use */
			FUNC6(shared, slotno);
			return slotno;
		}

		/* We found no match; assert we selected a freeable slot */
		FUNC0(shared->page_status[slotno] == SLRU_PAGE_EMPTY ||
			   (shared->page_status[slotno] == SLRU_PAGE_VALID &&
				!shared->page_dirty[slotno]));

		/* Mark the slot read-busy */
		shared->page_number[slotno] = pageno;
		shared->page_status[slotno] = SLRU_PAGE_READ_IN_PROGRESS;
		shared->page_dirty[slotno] = false;

		/* Acquire per-buffer lock (cannot deadlock, see notes at top) */
		FUNC1(&shared->buffer_locks[slotno].lock, LW_EXCLUSIVE);

		/* Release control lock while doing I/O */
		FUNC2(shared->ControlLock);

		/* Do the read */
		ok = FUNC5(ctl, pageno, slotno);

		/* Set the LSNs for this newly read-in page to zero */
		FUNC4(ctl, slotno);

		/* Re-acquire control lock and update page state */
		FUNC1(shared->ControlLock, LW_EXCLUSIVE);

		FUNC0(shared->page_number[slotno] == pageno &&
			   shared->page_status[slotno] == SLRU_PAGE_READ_IN_PROGRESS &&
			   !shared->page_dirty[slotno]);

		shared->page_status[slotno] = ok ? SLRU_PAGE_VALID : SLRU_PAGE_EMPTY;

		FUNC2(&shared->buffer_locks[slotno].lock);

		/* Now it's okay to ereport if we failed */
		if (!ok)
			FUNC7(ctl, pageno, xid);

		FUNC6(shared, slotno);
		return slotno;
	}
}