#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int lwWaiting; int /*<<< orphan*/  pgprocno; scalar_t__ lwWaitMode; } ;
struct TYPE_6__ {int /*<<< orphan*/  nwaiters; int /*<<< orphan*/  waiters; int /*<<< orphan*/  state; } ;
typedef  scalar_t__ LWLockMode ;
typedef  TYPE_1__ LWLock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  LW_FLAG_HAS_WAITERS ; 
 scalar_t__ LW_WAIT_UNTIL_FREE ; 
 TYPE_2__* MyProc ; 
 int /*<<< orphan*/  PANIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  lwWaitLink ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(LWLock *lock, LWLockMode mode)
{
	/*
	 * If we don't have a PGPROC structure, there's no way to wait. This
	 * should never occur, since MyProc should only be null during shared
	 * memory initialization.
	 */
	if (MyProc == NULL)
		FUNC2(PANIC, "cannot wait without a PGPROC structure");

	if (MyProc->lwWaiting)
		FUNC2(PANIC, "queueing for lock while waiting on another one");

	FUNC0(lock);

	/* setting the flag is protected by the spinlock */
	FUNC4(&lock->state, LW_FLAG_HAS_WAITERS);

	MyProc->lwWaiting = true;
	MyProc->lwWaitMode = mode;

	/* LW_WAIT_UNTIL_FREE waiters are always at the front of the queue */
	if (mode == LW_WAIT_UNTIL_FREE)
		FUNC5(&lock->waiters, MyProc->pgprocno, lwWaitLink);
	else
		FUNC6(&lock->waiters, MyProc->pgprocno, lwWaitLink);

	/* Can release the mutex now */
	FUNC1(lock);

#ifdef LOCK_DEBUG
	pg_atomic_fetch_add_u32(&lock->nwaiters, 1);
#endif

}