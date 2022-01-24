#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * latch; int /*<<< orphan*/  mutex; int /*<<< orphan*/  walRcvState; } ;
typedef  TYPE_1__ WalRcvData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WALRCV_STOPPED ; 
 TYPE_1__* WalRcv ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(void)
{
	bool		found;

	WalRcv = (WalRcvData *)
		FUNC1("Wal Receiver Ctl", FUNC3(), &found);

	if (!found)
	{
		/* First time through, so initialize */
		FUNC0(WalRcv, 0, FUNC3());
		WalRcv->walRcvState = WALRCV_STOPPED;
		FUNC2(&WalRcv->mutex);
		WalRcv->latch = NULL;
	}
}