#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int nworkers_launched; struct TYPE_5__* function_name; struct TYPE_5__* library_name; struct TYPE_5__* worker; struct TYPE_5__* private_memory; int /*<<< orphan*/ * seg; int /*<<< orphan*/ * error_mqh; int /*<<< orphan*/  bgwhandle; int /*<<< orphan*/  node; } ;
typedef  TYPE_1__ ParallelContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(ParallelContext *pcxt)
{
	int			i;

	/*
	 * Be careful about order of operations here!  We remove the parallel
	 * context from the list before we do anything else; otherwise, if an
	 * error occurs during a subsequent step, we might try to nuke it again
	 * from AtEOXact_Parallel or AtEOSubXact_Parallel.
	 */
	FUNC4(&pcxt->node);

	/* Kill each worker in turn, and forget their error queues. */
	if (pcxt->worker != NULL)
	{
		for (i = 0; i < pcxt->nworkers_launched; ++i)
		{
			if (pcxt->worker[i].error_mqh != NULL)
			{
				FUNC2(pcxt->worker[i].bgwhandle);

				FUNC7(pcxt->worker[i].error_mqh);
				pcxt->worker[i].error_mqh = NULL;
			}
		}
	}

	/*
	 * If we have allocated a shared memory segment, detach it.  This will
	 * implicitly detach the error queues, and any other shared memory queues,
	 * stored there.
	 */
	if (pcxt->seg != NULL)
	{
		FUNC5(pcxt->seg);
		pcxt->seg = NULL;
	}

	/*
	 * If this parallel context is actually in backend-private memory rather
	 * than shared memory, free that memory instead.
	 */
	if (pcxt->private_memory != NULL)
	{
		FUNC6(pcxt->private_memory);
		pcxt->private_memory = NULL;
	}

	/*
	 * We can't finish transaction commit or abort until all of the workers
	 * have exited.  This means, in particular, that we can't respond to
	 * interrupts at this stage.
	 */
	FUNC0();
	FUNC3(pcxt);
	FUNC1();

	/* Free the worker array itself. */
	if (pcxt->worker != NULL)
	{
		FUNC6(pcxt->worker);
		pcxt->worker = NULL;
	}

	/* Free memory. */
	FUNC6(pcxt->library_name);
	FUNC6(pcxt->function_name);
	FUNC6(pcxt);
}