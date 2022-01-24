#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  instr_time ;
typedef  int /*<<< orphan*/  WaitEvent ;
struct TYPE_7__ {int /*<<< orphan*/  pgprocno; } ;
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  wakeup; } ;
typedef  TYPE_1__ ConditionVariable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long INT_MAX ; 
 int /*<<< orphan*/  MyLatch ; 
 TYPE_3__* MyProc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,long,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cvWaitLink ; 
 TYPE_1__* cv_sleep_target ; 
 int /*<<< orphan*/  cv_wait_event_set ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC12(ConditionVariable *cv, long timeout,
							uint32 wait_event_info)
{
	long		cur_timeout = -1;
	instr_time	start_time;
	instr_time	cur_time;

	/*
	 * If the caller didn't prepare to sleep explicitly, then do so now and
	 * return immediately.  The caller's predicate loop should immediately
	 * call again if its exit condition is not yet met.  This will result in
	 * the exit condition being tested twice before we first sleep.  The extra
	 * test can be prevented by calling ConditionVariablePrepareToSleep(cv)
	 * first.  Whether it's worth doing that depends on whether you expect the
	 * exit condition to be met initially, in which case skipping the prepare
	 * is recommended because it avoids manipulations of the wait list, or not
	 * met initially, in which case preparing first is better because it
	 * avoids one extra test of the exit condition.
	 *
	 * If we are currently prepared to sleep on some other CV, we just cancel
	 * that and prepare this one; see ConditionVariablePrepareToSleep.
	 */
	if (cv_sleep_target != cv)
	{
		FUNC2(cv);
		return false;
	}

	/*
	 * Record the current time so that we can calculate the remaining timeout
	 * if we are woken up spuriously.
	 */
	if (timeout >= 0)
	{
		FUNC4(start_time);
		FUNC0(timeout >= 0 && timeout <= INT_MAX);
		cur_timeout = timeout;
	}

	while (true)
	{
		WaitEvent	event;
		bool		done = false;

		/*
		 * Wait for latch to be set.  (If we're awakened for some other
		 * reason, the code below will cope anyway.)
		 */
		(void) FUNC9(cv_wait_event_set, cur_timeout, &event, 1,
								wait_event_info);

		/* Reset latch before examining the state of the wait list. */
		FUNC6(MyLatch);

		FUNC1();

		/*
		 * If this process has been taken out of the wait list, then we know
		 * that it has been signaled by ConditionVariableSignal (or
		 * ConditionVariableBroadcast), so we should return to the caller. But
		 * that doesn't guarantee that the exit condition is met, only that we
		 * ought to check it.  So we must put the process back into the wait
		 * list, to ensure we don't miss any additional wakeup occurring while
		 * the caller checks its exit condition.  We can take ourselves out of
		 * the wait list only when the caller calls
		 * ConditionVariableCancelSleep.
		 *
		 * If we're still in the wait list, then the latch must have been set
		 * by something other than ConditionVariableSignal; though we don't
		 * guarantee not to return spuriously, we'll avoid this obvious case.
		 */
		FUNC7(&cv->mutex);
		if (!FUNC10(&cv->wakeup, MyProc->pgprocno, cvWaitLink))
		{
			done = true;
			FUNC11(&cv->wakeup, MyProc->pgprocno, cvWaitLink);
		}
		FUNC8(&cv->mutex);

		/* We were signaled, so return */
		if (done)
			return false;

		/* If we're not done, update cur_timeout for next iteration */
		if (timeout >= 0)
		{
			FUNC4(cur_time);
			FUNC5(cur_time, start_time);
			cur_timeout = timeout - (long) FUNC3(cur_time);

			/* Have we crossed the timeout threshold? */
			if (cur_timeout <= 0)
				return true;
		}
	}
}