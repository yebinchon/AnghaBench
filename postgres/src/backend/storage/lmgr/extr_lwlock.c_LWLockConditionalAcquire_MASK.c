#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ mode; int /*<<< orphan*/ * lock; } ;
typedef  scalar_t__ LWLockMode ;
typedef  int /*<<< orphan*/  LWLock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ LW_EXCLUSIVE ; 
 scalar_t__ LW_SHARED ; 
 size_t MAX_SIMUL_LWLOCKS ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* held_lwlocks ; 
 size_t num_held_lwlocks ; 

bool
FUNC10(LWLock *lock, LWLockMode mode)
{
	bool		mustwait;

	FUNC0(mode == LW_SHARED || mode == LW_EXCLUSIVE);

	FUNC4("LWLockConditionalAcquire", lock, mode);

	/* Ensure we will have room to remember the lock */
	if (num_held_lwlocks >= MAX_SIMUL_LWLOCKS)
		FUNC9(ERROR, "too many LWLocks taken");

	/*
	 * Lock out cancel/die interrupts until we exit the code section protected
	 * by the LWLock.  This ensures that interrupts will not interfere with
	 * manipulations of data structures in shared memory.
	 */
	FUNC1();

	/* Check for the lock */
	mustwait = FUNC3(lock, mode);

	if (mustwait)
	{
		/* Failed to get lock, so release interrupt holdoff */
		FUNC5();

		FUNC2("LWLockConditionalAcquire", lock, "failed");
		FUNC7(FUNC8(lock), mode);
	}
	else
	{
		/* Add lock to list of locks held by this backend */
		held_lwlocks[num_held_lwlocks].lock = lock;
		held_lwlocks[num_held_lwlocks++].mode = mode;
		FUNC6(FUNC8(lock), mode);
	}
	return !mustwait;
}