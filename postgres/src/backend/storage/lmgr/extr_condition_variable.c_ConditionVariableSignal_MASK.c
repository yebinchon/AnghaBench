#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  wakeup; } ;
struct TYPE_5__ {int /*<<< orphan*/  procLatch; } ;
typedef  TYPE_1__ PGPROC ;
typedef  TYPE_2__ ConditionVariable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cvWaitLink ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5(ConditionVariable *cv)
{
	PGPROC	   *proc = NULL;

	/* Remove the first process from the wakeup queue (if any). */
	FUNC1(&cv->mutex);
	if (!FUNC3(&cv->wakeup))
		proc = FUNC4(&cv->wakeup, cvWaitLink);
	FUNC2(&cv->mutex);

	/* If we found someone sleeping, set their latch to wake them up. */
	if (proc != NULL)
		FUNC0(&proc->procLatch);
}