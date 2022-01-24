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
typedef  scalar_t__ pg_time_t ;
typedef  scalar_t__ WalRcvState ;
struct TYPE_3__ {scalar_t__ walRcvState; scalar_t__ startTime; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ WalRcvData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ WALRCV_RESTARTING ; 
 scalar_t__ WALRCV_STARTING ; 
 scalar_t__ WALRCV_STARTUP_TIMEOUT ; 
 scalar_t__ WALRCV_STOPPED ; 
 scalar_t__ WALRCV_STREAMING ; 
 TYPE_1__* WalRcv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool
FUNC3(void)
{
	WalRcvData *walrcv = WalRcv;
	WalRcvState state;
	pg_time_t	startTime;

	FUNC0(&walrcv->mutex);

	state = walrcv->walRcvState;
	startTime = walrcv->startTime;

	FUNC1(&walrcv->mutex);

	/*
	 * If it has taken too long for walreceiver to start up, give up. Setting
	 * the state to STOPPED ensures that if walreceiver later does start up
	 * after all, it will see that it's not supposed to be running and die
	 * without doing anything.
	 */
	if (state == WALRCV_STARTING)
	{
		pg_time_t	now = (pg_time_t) FUNC2(NULL);

		if ((now - startTime) > WALRCV_STARTUP_TIMEOUT)
		{
			FUNC0(&walrcv->mutex);

			if (walrcv->walRcvState == WALRCV_STARTING)
				state = walrcv->walRcvState = WALRCV_STOPPED;

			FUNC1(&walrcv->mutex);
		}
	}

	if (state == WALRCV_STREAMING || state == WALRCV_STARTING ||
		state == WALRCV_RESTARTING)
		return true;
	else
		return false;
}