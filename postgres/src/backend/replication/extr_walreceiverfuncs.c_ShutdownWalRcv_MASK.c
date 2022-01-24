#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pid_t ;
struct TYPE_3__ {int walRcvState; scalar_t__ pid; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ WalRcvData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
#define  WALRCV_RESTARTING 133 
#define  WALRCV_STARTING 132 
#define  WALRCV_STOPPED 131 
#define  WALRCV_STOPPING 130 
#define  WALRCV_STREAMING 129 
#define  WALRCV_WAITING 128 
 TYPE_1__* WalRcv ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void
FUNC6(void)
{
	WalRcvData *walrcv = WalRcv;
	pid_t		walrcvpid = 0;

	/*
	 * Request walreceiver to stop. Walreceiver will switch to WALRCV_STOPPED
	 * mode once it's finished, and will also request postmaster to not
	 * restart itself.
	 */
	FUNC1(&walrcv->mutex);
	switch (walrcv->walRcvState)
	{
		case WALRCV_STOPPED:
			break;
		case WALRCV_STARTING:
			walrcv->walRcvState = WALRCV_STOPPED;
			break;

		case WALRCV_STREAMING:
		case WALRCV_WAITING:
		case WALRCV_RESTARTING:
			walrcv->walRcvState = WALRCV_STOPPING;
			/* fall through */
		case WALRCV_STOPPING:
			walrcvpid = walrcv->pid;
			break;
	}
	FUNC2(&walrcv->mutex);

	/*
	 * Signal walreceiver process if it was still running.
	 */
	if (walrcvpid != 0)
		FUNC4(walrcvpid, SIGTERM);

	/*
	 * Wait for walreceiver to acknowledge its death by setting state to
	 * WALRCV_STOPPED.
	 */
	while (FUNC3())
	{
		/*
		 * This possibly-long loop needs to handle interrupts of startup
		 * process.
		 */
		FUNC0();

		FUNC5(100000);		/* 100ms */
	}
}