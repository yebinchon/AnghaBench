#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * handle; } ;
typedef  TYPE_1__ worker_state ;
typedef  int /*<<< orphan*/  test_shm_mq_header ;
typedef  int /*<<< orphan*/  shm_mq_handle ;
typedef  int /*<<< orphan*/  shm_mq ;
typedef  int /*<<< orphan*/  int64 ;
typedef  int int32 ;
typedef  int /*<<< orphan*/  dsm_segment ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cleanup_background_workers ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void
FUNC7(int64 queue_size, int32 nworkers, dsm_segment **segp,
				  shm_mq_handle **output, shm_mq_handle **input)
{
	dsm_segment *seg;
	test_shm_mq_header *hdr;
	shm_mq	   *outq = NULL;	/* placate compiler */
	shm_mq	   *inq = NULL;		/* placate compiler */
	worker_state *wstate;

	/* Set up a dynamic shared memory segment. */
	FUNC4(queue_size, nworkers, &seg, &hdr, &outq, &inq);
	*segp = seg;

	/* Register background workers. */
	wstate = FUNC3(nworkers, seg);

	/* Attach the queues. */
	*output = FUNC5(outq, seg, wstate->handle[0]);
	*input = FUNC5(inq, seg, wstate->handle[nworkers - 1]);

	/* Wait for workers to become ready. */
	FUNC6(wstate, hdr);

	/*
	 * Once we reach this point, all workers are ready.  We no longer need to
	 * kill them if we die; they'll die on their own as the message queues
	 * shut down.
	 */
	FUNC1(seg, cleanup_background_workers,
						 FUNC0(wstate));
	FUNC2(wstate);
}