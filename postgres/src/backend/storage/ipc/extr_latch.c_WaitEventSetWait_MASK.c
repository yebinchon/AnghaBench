#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  instr_time ;
struct TYPE_11__ {size_t latch_pos; TYPE_2__* events; TYPE_1__* latch; } ;
typedef  TYPE_3__ WaitEventSet ;
struct TYPE_12__ {size_t pos; int /*<<< orphan*/  events; int /*<<< orphan*/  user_data; int /*<<< orphan*/  fd; } ;
typedef  TYPE_4__ WaitEvent ;
struct TYPE_10__ {int /*<<< orphan*/  user_data; } ;
struct TYPE_9__ {scalar_t__ is_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long INT_MAX ; 
 int /*<<< orphan*/  PGINVALID_SOCKET ; 
 int /*<<< orphan*/  WL_LATCH_SET ; 
 int FUNC4 (TYPE_3__*,long,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int waiting ; 

int
FUNC8(WaitEventSet *set, long timeout,
				 WaitEvent *occurred_events, int nevents,
				 uint32 wait_event_info)
{
	int			returned_events = 0;
	instr_time	start_time;
	instr_time	cur_time;
	long		cur_timeout = -1;

	FUNC0(nevents > 0);

	/*
	 * Initialize timeout if requested.  We must record the current time so
	 * that we can determine the remaining timeout if interrupted.
	 */
	if (timeout >= 0)
	{
		FUNC2(start_time);
		FUNC0(timeout >= 0 && timeout <= INT_MAX);
		cur_timeout = timeout;
	}

	FUNC6(wait_event_info);

#ifndef WIN32
	waiting = true;
#else
	/* Ensure that signals are serviced even if latch is already set */
	pgwin32_dispatch_queued_signals();
#endif
	while (returned_events == 0)
	{
		int			rc;

		/*
		 * Check if the latch is set already. If so, leave the loop
		 * immediately, avoid blocking again. We don't attempt to report any
		 * other events that might also be satisfied.
		 *
		 * If someone sets the latch between this and the
		 * WaitEventSetWaitBlock() below, the setter will write a byte to the
		 * pipe (or signal us and the signal handler will do that), and the
		 * readiness routine will return immediately.
		 *
		 * On unix, If there's a pending byte in the self pipe, we'll notice
		 * whenever blocking. Only clearing the pipe in that case avoids
		 * having to drain it every time WaitLatchOrSocket() is used. Should
		 * the pipe-buffer fill up we're still ok, because the pipe is in
		 * nonblocking mode. It's unlikely for that to happen, because the
		 * self pipe isn't filled unless we're blocking (waiting = true), or
		 * from inside a signal handler in latch_sigusr1_handler().
		 *
		 * On windows, we'll also notice if there's a pending event for the
		 * latch when blocking, but there's no danger of anything filling up,
		 * as "Setting an event that is already set has no effect.".
		 *
		 * Note: we assume that the kernel calls involved in latch management
		 * will provide adequate synchronization on machines with weak memory
		 * ordering, so that we cannot miss seeing is_set if a notification
		 * has already been queued.
		 */
		if (set->latch && set->latch->is_set)
		{
			occurred_events->fd = PGINVALID_SOCKET;
			occurred_events->pos = set->latch_pos;
			occurred_events->user_data =
				set->events[set->latch_pos].user_data;
			occurred_events->events = WL_LATCH_SET;
			occurred_events++;
			returned_events++;

			break;
		}

		/*
		 * Wait for events using the readiness primitive chosen at the top of
		 * this file. If -1 is returned, a timeout has occurred, if 0 we have
		 * to retry, everything >= 1 is the number of returned events.
		 */
		rc = FUNC4(set, cur_timeout,
								   occurred_events, nevents);

		if (rc == -1)
			break;				/* timeout occurred */
		else
			returned_events = rc;

		/* If we're not done, update cur_timeout for next iteration */
		if (returned_events == 0 && timeout >= 0)
		{
			FUNC2(cur_time);
			FUNC3(cur_time, start_time);
			cur_timeout = timeout - (long) FUNC1(cur_time);
			if (cur_timeout <= 0)
				break;
		}
	}
#ifndef WIN32
	waiting = false;
#endif

	FUNC5();

	return returned_events;
}