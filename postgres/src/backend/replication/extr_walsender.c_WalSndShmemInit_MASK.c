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
struct TYPE_5__ {TYPE_2__* walsnds; int /*<<< orphan*/ * SyncRepQueue; } ;
typedef  TYPE_1__ WalSndCtlData ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_2__ WalSnd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NUM_SYNC_REP_WAIT_MODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* WalSndCtl ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int max_wal_senders ; 

void
FUNC5(void)
{
	bool		found;
	int			i;

	WalSndCtl = (WalSndCtlData *)
		FUNC2("Wal Sender Ctl", FUNC4(), &found);

	if (!found)
	{
		/* First time through, so initialize */
		FUNC0(WalSndCtl, 0, FUNC4());

		for (i = 0; i < NUM_SYNC_REP_WAIT_MODE; i++)
			FUNC1(&(WalSndCtl->SyncRepQueue[i]));

		for (i = 0; i < max_wal_senders; i++)
		{
			WalSnd	   *walsnd = &WalSndCtl->walsnds[i];

			FUNC3(&walsnd->mutex);
		}
	}
}