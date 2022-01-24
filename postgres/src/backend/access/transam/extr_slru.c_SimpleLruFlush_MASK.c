#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ do_fsync; TYPE_1__* shared; } ;
struct TYPE_9__ {int num_files; int* segno; int /*<<< orphan*/ * fd; } ;
struct TYPE_8__ {int num_slots; scalar_t__* page_status; int /*<<< orphan*/  ControlLock; int /*<<< orphan*/ * page_dirty; } ;
typedef  TYPE_1__* SlruShared ;
typedef  TYPE_2__ SlruFlushData ;
typedef  TYPE_3__* SlruCtl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  InvalidTransactionId ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  SLRU_CLOSE_FAILED ; 
 int /*<<< orphan*/  SLRU_FSYNC_FAILED ; 
 int SLRU_PAGES_PER_SEGMENT ; 
 scalar_t__ SLRU_PAGE_EMPTY ; 
 scalar_t__ SLRU_PAGE_VALID ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_EVENT_SLRU_FLUSH_SYNC ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  slru_errcause ; 
 int /*<<< orphan*/  slru_errno ; 

void
FUNC9(SlruCtl ctl, bool allow_redirtied)
{
	SlruShared	shared = ctl->shared;
	SlruFlushData fdata;
	int			slotno;
	int			pageno = 0;
	int			i;
	bool		ok;

	/*
	 * Find and write dirty pages
	 */
	fdata.num_files = 0;

	FUNC2(shared->ControlLock, LW_EXCLUSIVE);

	for (slotno = 0; slotno < shared->num_slots; slotno++)
	{
		FUNC4(ctl, slotno, &fdata);

		/*
		 * In some places (e.g. checkpoints), we cannot assert that the slot
		 * is clean now, since another process might have re-dirtied it
		 * already.  That's okay.
		 */
		FUNC0(allow_redirtied ||
			   shared->page_status[slotno] == SLRU_PAGE_EMPTY ||
			   (shared->page_status[slotno] == SLRU_PAGE_VALID &&
				!shared->page_dirty[slotno]));
	}

	FUNC3(shared->ControlLock);

	/*
	 * Now fsync and close any files that were open
	 */
	ok = true;
	for (i = 0; i < fdata.num_files; i++)
	{
		FUNC8(WAIT_EVENT_SLRU_FLUSH_SYNC);
		if (ctl->do_fsync && FUNC6(fdata.fd[i]) != 0)
		{
			slru_errcause = SLRU_FSYNC_FAILED;
			slru_errno = errno;
			pageno = fdata.segno[i] * SLRU_PAGES_PER_SEGMENT;
			ok = false;
		}
		FUNC7();

		if (FUNC1(fdata.fd[i]) != 0)
		{
			slru_errcause = SLRU_CLOSE_FAILED;
			slru_errno = errno;
			pageno = fdata.segno[i] * SLRU_PAGES_PER_SEGMENT;
			ok = false;
		}
	}
	if (!ok)
		FUNC5(ctl, pageno, InvalidTransactionId);
}