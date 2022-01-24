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
struct timeval {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_5__ {int numWorkers; TYPE_1__* parallelSlot; } ;
struct TYPE_4__ {scalar_t__ workerStatus; int pipeRead; } ;
typedef  TYPE_2__ ParallelState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ WRKR_TERMINATED ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int FUNC7 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC8(ParallelState *pstate, bool do_wait, int *worker)
{
	int			i;
	fd_set		workerset;
	int			maxFd = -1;
	struct timeval nowait = {0, 0};

	/* construct bitmap of socket descriptors for select() */
	FUNC3(&workerset);
	for (i = 0; i < pstate->numWorkers; i++)
	{
		if (pstate->parallelSlot[i].workerStatus == WRKR_TERMINATED)
			continue;
		FUNC2(pstate->parallelSlot[i].pipeRead, &workerset);
		if (pstate->parallelSlot[i].pipeRead > maxFd)
			maxFd = pstate->parallelSlot[i].pipeRead;
	}

	if (do_wait)
	{
		i = FUNC7(maxFd, &workerset);
		FUNC0(i != 0);
	}
	else
	{
		if ((i = FUNC6(maxFd + 1, &workerset, NULL, NULL, &nowait)) == 0)
			return NULL;
	}

	if (i < 0)
		FUNC4("select() failed: %m");

	for (i = 0; i < pstate->numWorkers; i++)
	{
		char	   *msg;

		if (!FUNC1(pstate->parallelSlot[i].pipeRead, &workerset))
			continue;

		/*
		 * Read the message if any.  If the socket is ready because of EOF,
		 * we'll return NULL instead (and the socket will stay ready, so the
		 * condition will persist).
		 *
		 * Note: because this is a blocking read, we'll wait if only part of
		 * the message is available.  Waiting a long time would be bad, but
		 * since worker status messages are short and are always sent in one
		 * operation, it shouldn't be a problem in practice.
		 */
		msg = FUNC5(pstate->parallelSlot[i].pipeRead);
		*worker = i;
		return msg;
	}
	FUNC0(false);
	return NULL;
}