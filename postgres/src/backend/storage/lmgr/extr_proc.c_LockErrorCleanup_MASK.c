#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * next; } ;
struct TYPE_10__ {scalar_t__ waitStatus; TYPE_1__ links; } ;
struct TYPE_9__ {int /*<<< orphan*/  hashcode; } ;
struct TYPE_8__ {int keep_indicator; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  LWLock ;
typedef  TYPE_2__ DisableTimeoutParams ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DEADLOCK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LOCK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_5__* MyProc ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ STATUS_OK ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 TYPE_3__* lockAwaited ; 

void
FUNC9(void)
{
	LWLock	   *partitionLock;
	DisableTimeoutParams timeouts[2];

	FUNC2();

	FUNC0();

	/* Nothing to do if we weren't waiting for a lock */
	if (lockAwaited == NULL)
	{
		FUNC6();
		return;
	}

	/*
	 * Turn off the deadlock and lock timeout timers, if they are still
	 * running (see ProcSleep).  Note we must preserve the LOCK_TIMEOUT
	 * indicator flag, since this function is executed before
	 * ProcessInterrupts when responding to SIGINT; else we'd lose the
	 * knowledge that the SIGINT came from a lock timeout and not an external
	 * source.
	 */
	timeouts[0].id = DEADLOCK_TIMEOUT;
	timeouts[0].keep_indicator = false;
	timeouts[1].id = LOCK_TIMEOUT;
	timeouts[1].keep_indicator = true;
	FUNC8(timeouts, 2);

	/* Unlink myself from the wait queue, if on it (might not be anymore!) */
	partitionLock = FUNC5(lockAwaited->hashcode);
	FUNC3(partitionLock, LW_EXCLUSIVE);

	if (MyProc->links.next != NULL)
	{
		/* We could not have been granted the lock yet */
		FUNC7(MyProc, lockAwaited->hashcode);
	}
	else
	{
		/*
		 * Somebody kicked us off the lock queue already.  Perhaps they
		 * granted us the lock, or perhaps they detected a deadlock. If they
		 * did grant us the lock, we'd better remember it in our local lock
		 * table.
		 */
		if (MyProc->waitStatus == STATUS_OK)
			FUNC1();
	}

	lockAwaited = NULL;

	FUNC4(partitionLock);

	FUNC6();
}