#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ pid; int writeLag; int flushLag; int applyLag; int /*<<< orphan*/  mutex; scalar_t__ replyTime; int /*<<< orphan*/ * latch; int /*<<< orphan*/  state; void* apply; void* flush; void* write; void* sentPtr; } ;
typedef  TYPE_1__ WalSnd ;
struct TYPE_7__ {int /*<<< orphan*/  procLatch; } ;
struct TYPE_6__ {TYPE_1__* walsnds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* InvalidXLogRecPtr ; 
 TYPE_4__* MyProc ; 
 scalar_t__ MyProcPid ; 
 TYPE_1__* MyWalSnd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WALSNDSTATE_STARTUP ; 
 TYPE_2__* WalSndCtl ; 
 int /*<<< orphan*/  WalSndKill ; 
 int max_wal_senders ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
	int			i;

	/*
	 * WalSndCtl should be set up already (we inherit this by fork() or
	 * EXEC_BACKEND mechanism from the postmaster).
	 */
	FUNC0(WalSndCtl != NULL);
	FUNC0(MyWalSnd == NULL);

	/*
	 * Find a free walsender slot and reserve it. This must not fail due to
	 * the prior check for free WAL senders in InitProcess().
	 */
	for (i = 0; i < max_wal_senders; i++)
	{
		WalSnd	   *walsnd = &WalSndCtl->walsnds[i];

		FUNC1(&walsnd->mutex);

		if (walsnd->pid != 0)
		{
			FUNC2(&walsnd->mutex);
			continue;
		}
		else
		{
			/*
			 * Found a free slot. Reserve it for us.
			 */
			walsnd->pid = MyProcPid;
			walsnd->sentPtr = InvalidXLogRecPtr;
			walsnd->write = InvalidXLogRecPtr;
			walsnd->flush = InvalidXLogRecPtr;
			walsnd->apply = InvalidXLogRecPtr;
			walsnd->writeLag = -1;
			walsnd->flushLag = -1;
			walsnd->applyLag = -1;
			walsnd->state = WALSNDSTATE_STARTUP;
			walsnd->latch = &MyProc->procLatch;
			walsnd->replyTime = 0;
			FUNC2(&walsnd->mutex);
			/* don't need the lock anymore */
			MyWalSnd = (WalSnd *) walsnd;

			break;
		}
	}

	FUNC0(MyWalSnd != NULL);

	/* Arrange to clean up at walsender exit */
	FUNC3(WalSndKill, 0);
}