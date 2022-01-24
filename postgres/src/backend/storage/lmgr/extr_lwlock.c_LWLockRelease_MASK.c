#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_9__ {scalar_t__ mode; TYPE_1__* lock; } ;
struct TYPE_8__ {int /*<<< orphan*/  state; } ;
typedef  scalar_t__ LWLockMode ;
typedef  TYPE_1__ LWLock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ LW_EXCLUSIVE ; 
 int LW_FLAG_HAS_WAITERS ; 
 int LW_FLAG_RELEASE_OK ; 
 int LW_LOCK_MASK ; 
 int LW_VAL_EXCLUSIVE ; 
 int LW_VAL_SHARED ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_2__* held_lwlocks ; 
 int num_held_lwlocks ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 

void
FUNC9(LWLock *lock)
{
	LWLockMode	mode;
	uint32		oldstate;
	bool		check_waiters;
	int			i;

	/*
	 * Remove lock from list of locks held.  Usually, but not always, it will
	 * be the latest-acquired lock; so search array backwards.
	 */
	for (i = num_held_lwlocks; --i >= 0;)
		if (lock == held_lwlocks[i].lock)
			break;

	if (i < 0)
		FUNC7(ERROR, "lock %s is not held", FUNC6(lock));

	mode = held_lwlocks[i].mode;

	num_held_lwlocks--;
	for (; i < num_held_lwlocks; i++)
		held_lwlocks[i] = held_lwlocks[i + 1];

	FUNC3("LWLockRelease", lock, mode);

	/*
	 * Release my hold on lock, after that it can immediately be acquired by
	 * others, even if we still have to wakeup other waiters.
	 */
	if (mode == LW_EXCLUSIVE)
		oldstate = FUNC8(&lock->state, LW_VAL_EXCLUSIVE);
	else
		oldstate = FUNC8(&lock->state, LW_VAL_SHARED);

	/* nobody else can have that kind of lock */
	FUNC0(!(oldstate & LW_VAL_EXCLUSIVE));


	/*
	 * We're still waiting for backends to get scheduled, don't wake them up
	 * again.
	 */
	if ((oldstate & (LW_FLAG_HAS_WAITERS | LW_FLAG_RELEASE_OK)) ==
		(LW_FLAG_HAS_WAITERS | LW_FLAG_RELEASE_OK) &&
		(oldstate & LW_LOCK_MASK) == 0)
		check_waiters = true;
	else
		check_waiters = false;

	/*
	 * As waking up waiters requires the spinlock to be acquired, only do so
	 * if necessary.
	 */
	if (check_waiters)
	{
		/* XXX: remove before commit? */
		FUNC1("LWLockRelease", lock, "releasing waiters");
		FUNC2(lock);
	}

	FUNC5(FUNC6(lock));

	/*
	 * Now okay to allow cancel/die interrupts.
	 */
	FUNC4();
}