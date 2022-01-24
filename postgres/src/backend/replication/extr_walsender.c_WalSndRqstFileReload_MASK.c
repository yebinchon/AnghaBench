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
struct TYPE_3__ {scalar_t__ pid; int needreload; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ WalSnd ;
struct TYPE_4__ {TYPE_1__* walsnds; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* WalSndCtl ; 
 int max_wal_senders ; 

void
FUNC2(void)
{
	int			i;

	for (i = 0; i < max_wal_senders; i++)
	{
		WalSnd	   *walsnd = &WalSndCtl->walsnds[i];

		FUNC0(&walsnd->mutex);
		if (walsnd->pid == 0)
		{
			FUNC1(&walsnd->mutex);
			continue;
		}
		walsnd->needreload = true;
		FUNC1(&walsnd->mutex);
	}
}