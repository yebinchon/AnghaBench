#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ semNum; int /*<<< orphan*/  semId; } ;
typedef  TYPE_1__* PGSemaphore ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int /*<<< orphan*/  PANIC ; 
 scalar_t__ SEMAS_PER_SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 size_t maxSemaSets ; 
 scalar_t__ maxSharedSemas ; 
 int /*<<< orphan*/ * mySemaSets ; 
 scalar_t__ nextSemaNumber ; 
 size_t numSemaSets ; 
 scalar_t__ numSharedSemas ; 
 TYPE_1__* sharedSemas ; 

PGSemaphore
FUNC4(void)
{
	PGSemaphore sema;

	/* Can't do this in a backend, because static state is postmaster's */
	FUNC0(!IsUnderPostmaster);

	if (nextSemaNumber >= SEMAS_PER_SET)
	{
		/* Time to allocate another semaphore set */
		if (numSemaSets >= maxSemaSets)
			FUNC3(PANIC, "too many semaphores created");
		mySemaSets[numSemaSets] = FUNC1(SEMAS_PER_SET);
		numSemaSets++;
		nextSemaNumber = 0;
	}
	/* Use the next shared PGSemaphoreData */
	if (numSharedSemas >= maxSharedSemas)
		FUNC3(PANIC, "too many semaphores created");
	sema = &sharedSemas[numSharedSemas++];
	/* Assign the next free semaphore in the current set */
	sema->semId = mySemaSets[numSemaSets - 1];
	sema->semNum = nextSemaNumber++;
	/* Initialize it to count 1 */
	FUNC2(sema->semId, sema->semNum, 1);

	return sema;
}