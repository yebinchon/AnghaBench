#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pid_t ;
struct TYPE_3__ {scalar_t__ pid; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ WalSnd ;
struct TYPE_4__ {TYPE_1__* walsnds; } ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidBackendId ; 
 int /*<<< orphan*/  PROCSIG_WALSND_INIT_STOPPING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* WalSndCtl ; 
 int max_wal_senders ; 

void
FUNC3(void)
{
	int			i;

	for (i = 0; i < max_wal_senders; i++)
	{
		WalSnd	   *walsnd = &WalSndCtl->walsnds[i];
		pid_t		pid;

		FUNC1(&walsnd->mutex);
		pid = walsnd->pid;
		FUNC2(&walsnd->mutex);

		if (pid == 0)
			continue;

		FUNC0(pid, PROCSIG_WALSND_INIT_STOPPING, InvalidBackendId);
	}
}