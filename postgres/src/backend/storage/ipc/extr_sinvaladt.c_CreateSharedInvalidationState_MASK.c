#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int maxBackends; TYPE_1__* procState; int /*<<< orphan*/  msgnumLock; scalar_t__ lastBackend; int /*<<< orphan*/  nextThreshold; scalar_t__ maxMsgNum; scalar_t__ minMsgNum; } ;
struct TYPE_4__ {int resetState; int signaled; int hasMessages; int /*<<< orphan*/  nextLXID; scalar_t__ nextMsgNum; int /*<<< orphan*/ * proc; scalar_t__ procPid; } ;
typedef  TYPE_2__ SISeg ;

/* Variables and functions */
 int /*<<< orphan*/  CLEANUP_MIN ; 
 int /*<<< orphan*/  InvalidLocalTransactionId ; 
 int MaxBackends ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* shmInvalBuffer ; 

void
FUNC3(void)
{
	int			i;
	bool		found;

	/* Allocate space in shared memory */
	shmInvalBuffer = (SISeg *)
		FUNC1("shmInvalBuffer", FUNC0(), &found);
	if (found)
		return;

	/* Clear message counters, save size of procState array, init spinlock */
	shmInvalBuffer->minMsgNum = 0;
	shmInvalBuffer->maxMsgNum = 0;
	shmInvalBuffer->nextThreshold = CLEANUP_MIN;
	shmInvalBuffer->lastBackend = 0;
	shmInvalBuffer->maxBackends = MaxBackends;
	FUNC2(&shmInvalBuffer->msgnumLock);

	/* The buffer[] array is initially all unused, so we need not fill it */

	/* Mark all backends inactive, and initialize nextLXID */
	for (i = 0; i < shmInvalBuffer->maxBackends; i++)
	{
		shmInvalBuffer->procState[i].procPid = 0;	/* inactive */
		shmInvalBuffer->procState[i].proc = NULL;
		shmInvalBuffer->procState[i].nextMsgNum = 0;	/* meaningless */
		shmInvalBuffer->procState[i].resetState = false;
		shmInvalBuffer->procState[i].signaled = false;
		shmInvalBuffer->procState[i].hasMessages = false;
		shmInvalBuffer->procState[i].nextLXID = InvalidLocalTransactionId;
	}
}