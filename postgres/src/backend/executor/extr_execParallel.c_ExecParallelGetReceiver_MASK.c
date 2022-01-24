#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  shm_toc ;
typedef  int /*<<< orphan*/  shm_mq ;
typedef  int /*<<< orphan*/  dsm_segment ;
typedef  int /*<<< orphan*/  DestReceiver ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MyProc ; 
 int /*<<< orphan*/  PARALLEL_KEY_TUPLE_QUEUE ; 
 int PARALLEL_TUPLE_QUEUE_SIZE ; 
 int ParallelWorkerNumber ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static DestReceiver *
FUNC4(dsm_segment *seg, shm_toc *toc)
{
	char	   *mqspace;
	shm_mq	   *mq;

	mqspace = FUNC3(toc, PARALLEL_KEY_TUPLE_QUEUE, false);
	mqspace += ParallelWorkerNumber * PARALLEL_TUPLE_QUEUE_SIZE;
	mq = (shm_mq *) mqspace;
	FUNC2(mq, MyProc);
	return FUNC0(FUNC1(mq, seg, NULL));
}