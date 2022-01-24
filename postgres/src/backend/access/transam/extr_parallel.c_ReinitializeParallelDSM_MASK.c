#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  shm_mq ;
struct TYPE_9__ {scalar_t__ last_xlog_end; } ;
struct TYPE_8__ {scalar_t__ nworkers_launched; scalar_t__ nworkers; int /*<<< orphan*/  seg; TYPE_1__* worker; int /*<<< orphan*/  toc; scalar_t__ nknown_attached_workers; int /*<<< orphan*/ * known_attached_workers; } ;
struct TYPE_7__ {int /*<<< orphan*/  error_mqh; } ;
typedef  TYPE_2__ ParallelContext ;
typedef  TYPE_3__ FixedParallelState ;

/* Variables and functions */
 int /*<<< orphan*/  MyProc ; 
 int PARALLEL_ERROR_QUEUE_SIZE ; 
 int /*<<< orphan*/  PARALLEL_KEY_ERROR_QUEUE ; 
 int /*<<< orphan*/  PARALLEL_KEY_FIXED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC7(ParallelContext *pcxt)
{
	FixedParallelState *fps;

	/* Wait for any old workers to exit. */
	if (pcxt->nworkers_launched > 0)
	{
		FUNC1(pcxt);
		FUNC0(pcxt);
		pcxt->nworkers_launched = 0;
		if (pcxt->known_attached_workers)
		{
			FUNC2(pcxt->known_attached_workers);
			pcxt->known_attached_workers = NULL;
			pcxt->nknown_attached_workers = 0;
		}
	}

	/* Reset a few bits of fixed parallel state to a clean state. */
	fps = FUNC6(pcxt->toc, PARALLEL_KEY_FIXED, false);
	fps->last_xlog_end = 0;

	/* Recreate error queues (if they exist). */
	if (pcxt->nworkers > 0)
	{
		char	   *error_queue_space;
		int			i;

		error_queue_space =
			FUNC6(pcxt->toc, PARALLEL_KEY_ERROR_QUEUE, false);
		for (i = 0; i < pcxt->nworkers; ++i)
		{
			char	   *start;
			shm_mq	   *mq;

			start = error_queue_space + i * PARALLEL_ERROR_QUEUE_SIZE;
			mq = FUNC4(start, PARALLEL_ERROR_QUEUE_SIZE);
			FUNC5(mq, MyProc);
			pcxt->worker[i].error_mqh = FUNC3(mq, pcxt->seg, NULL);
		}
	}
}