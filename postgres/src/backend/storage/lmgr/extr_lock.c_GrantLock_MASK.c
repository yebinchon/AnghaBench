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
struct TYPE_7__ {scalar_t__ nGranted; scalar_t__* granted; scalar_t__* requested; scalar_t__ nRequested; int /*<<< orphan*/  waitMask; int /*<<< orphan*/  grantMask; } ;
struct TYPE_6__ {int /*<<< orphan*/  holdMask; } ;
typedef  TYPE_1__ PROCLOCK ;
typedef  size_t LOCKMODE ;
typedef  TYPE_2__ LOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*,size_t) ; 

void
FUNC4(LOCK *lock, PROCLOCK *proclock, LOCKMODE lockmode)
{
	lock->nGranted++;
	lock->granted[lockmode]++;
	lock->grantMask |= FUNC2(lockmode);
	if (lock->granted[lockmode] == lock->requested[lockmode])
		lock->waitMask &= FUNC1(lockmode);
	proclock->holdMask |= FUNC2(lockmode);
	FUNC3("GrantLock", lock, lockmode);
	FUNC0((lock->nGranted > 0) && (lock->granted[lockmode] > 0));
	FUNC0(lock->nGranted <= lock->nRequested);
}