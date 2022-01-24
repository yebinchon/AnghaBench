#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
union semun {scalar_t__ val; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_3__ {int semNum; scalar_t__ semId; } ;
typedef  TYPE_1__ PGSemaphoreData ;
typedef  scalar_t__ IpcSemaphoreId ;

/* Variables and functions */
 scalar_t__ ESRCH ; 
 int /*<<< orphan*/  IPC_RMID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,scalar_t__) ; 
 scalar_t__ PGSemaMagic ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nextSemaKey ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union semun) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static IpcSemaphoreId
FUNC9(int numSems)
{
	IpcSemaphoreId semId;
	union semun semun;
	PGSemaphoreData mysema;

	/* Loop till we find a free IPC key */
	for (nextSemaKey++;; nextSemaKey++)
	{
		pid_t		creatorPID;

		/* Try to create new semaphore set */
		semId = FUNC0(nextSemaKey, numSems + 1);
		if (semId >= 0)
			break;				/* successful create */

		/* See if it looks to be leftover from a dead Postgres process */
		semId = FUNC8(nextSemaKey, numSems + 1, 0);
		if (semId < 0)
			continue;			/* failed: must be some other app's */
		if (FUNC2(semId, numSems) != PGSemaMagic)
			continue;			/* sema belongs to a non-Postgres app */

		/*
		 * If the creator PID is my own PID or does not belong to any extant
		 * process, it's safe to zap it.
		 */
		creatorPID = FUNC1(semId, numSems);
		if (creatorPID <= 0)
			continue;			/* oops, GETPID failed */
		if (creatorPID != FUNC5())
		{
			if (FUNC6(creatorPID, 0) == 0 || errno != ESRCH)
				continue;		/* sema belongs to a live process */
		}

		/*
		 * The sema set appears to be from a dead Postgres process, or from a
		 * previous cycle of life in this same process.  Zap it, if possible.
		 * This probably shouldn't fail, but if it does, assume the sema set
		 * belongs to someone else after all, and continue quietly.
		 */
		semun.val = 0;			/* unused, but keep compiler quiet */
		if (FUNC7(semId, 0, IPC_RMID, semun) < 0)
			continue;

		/*
		 * Now try again to create the sema set.
		 */
		semId = FUNC0(nextSemaKey, numSems + 1);
		if (semId >= 0)
			break;				/* successful create */

		/*
		 * Can only get here if some other process managed to create the same
		 * sema key before we did.  Let him have that one, loop around to try
		 * next key.
		 */
	}

	/*
	 * OK, we created a new sema set.  Mark it as created by this process. We
	 * do this by setting the spare semaphore to PGSemaMagic-1 and then
	 * incrementing it with semop().  That leaves it with value PGSemaMagic
	 * and sempid referencing this process.
	 */
	FUNC3(semId, numSems, PGSemaMagic - 1);
	mysema.semId = semId;
	mysema.semNum = numSems;
	FUNC4(&mysema);

	return semId;
}