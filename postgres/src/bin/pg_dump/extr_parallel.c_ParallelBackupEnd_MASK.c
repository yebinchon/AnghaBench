#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * pstate; } ;
struct TYPE_7__ {int numWorkers; struct TYPE_7__* parallelSlot; struct TYPE_7__* te; int /*<<< orphan*/  pipeWrite; int /*<<< orphan*/  pipeRead; } ;
typedef  TYPE_1__ ParallelState ;
typedef  int /*<<< orphan*/  ArchiveHandle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__ shutdown_info ; 

void
FUNC6(ArchiveHandle *AH, ParallelState *pstate)
{
	int			i;

	/* No work if non-parallel */
	if (pstate->numWorkers == 1)
		return;

	/* There should not be any unfinished jobs */
	FUNC0(FUNC1(pstate));

	/* Close the sockets so that the workers know they can exit */
	for (i = 0; i < pstate->numWorkers; i++)
	{
		FUNC3(pstate->parallelSlot[i].pipeRead);
		FUNC3(pstate->parallelSlot[i].pipeWrite);
	}

	/* Wait for them to exit */
	FUNC2(pstate);

	/*
	 * Unlink pstate from shutdown_info, so the exit handler will not try to
	 * use it; and likewise unlink from signal_info.
	 */
	shutdown_info.pstate = NULL;
	FUNC5(NULL);

	/* Release state (mere neatnik-ism, since we're about to terminate) */
	FUNC4(pstate->te);
	FUNC4(pstate->parallelSlot);
	FUNC4(pstate);
}