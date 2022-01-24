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
struct TYPE_6__ {int pgprocno; } ;
struct TYPE_5__ {int numProcs; int maxProcs; int* pgprocnos; } ;
typedef  TYPE_1__ ProcArrayStruct ;
typedef  TYPE_2__ PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_TOO_MANY_CONNECTIONS ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  ProcArrayLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 TYPE_1__* procArray ; 

void
FUNC6(PGPROC *proc)
{
	ProcArrayStruct *arrayP = procArray;
	int			index;

	FUNC0(ProcArrayLock, LW_EXCLUSIVE);

	if (arrayP->numProcs >= arrayP->maxProcs)
	{
		/*
		 * Oops, no room.  (This really shouldn't happen, since there is a
		 * fixed supply of PGPROC structs too, and so we should have failed
		 * earlier.)
		 */
		FUNC1(ProcArrayLock);
		FUNC2(FATAL,
				(FUNC3(ERRCODE_TOO_MANY_CONNECTIONS),
				 FUNC4("sorry, too many clients already")));
	}

	/*
	 * Keep the procs array sorted by (PGPROC *) so that we can utilize
	 * locality of references much better. This is useful while traversing the
	 * ProcArray because there is an increased likelihood of finding the next
	 * PGPROC structure in the cache.
	 *
	 * Since the occurrence of adding/removing a proc is much lower than the
	 * access to the ProcArray itself, the overhead should be marginal
	 */
	for (index = 0; index < arrayP->numProcs; index++)
	{
		/*
		 * If we are the first PGPROC or if we have found our right position
		 * in the array, break
		 */
		if ((arrayP->pgprocnos[index] == -1) || (arrayP->pgprocnos[index] > proc->pgprocno))
			break;
	}

	FUNC5(&arrayP->pgprocnos[index + 1], &arrayP->pgprocnos[index],
			(arrayP->numProcs - index) * sizeof(int));
	arrayP->pgprocnos[index] = proc->pgprocno;
	arrayP->numProcs++;

	FUNC1(ProcArrayLock);
}