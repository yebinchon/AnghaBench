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
typedef  int /*<<< orphan*/  shm_mq_result ;
struct TYPE_7__ {int /*<<< orphan*/  mqh_handle; TYPE_2__* mqh_queue; } ;
typedef  TYPE_1__ shm_mq_handle ;
struct TYPE_8__ {int /*<<< orphan*/ * mq_receiver; int /*<<< orphan*/ * mq_sender; } ;
typedef  TYPE_2__ shm_mq ;
typedef  int /*<<< orphan*/  PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MyProc ; 
 int /*<<< orphan*/  SHM_MQ_DETACHED ; 
 int /*<<< orphan*/  SHM_MQ_SUCCESS ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

shm_mq_result
FUNC4(shm_mq_handle *mqh)
{
	shm_mq	   *mq = mqh->mqh_queue;
	PGPROC	  **victim;

	if (FUNC1(mq) == MyProc)
		victim = &mq->mq_sender;
	else
	{
		FUNC0(FUNC2(mq) == MyProc);
		victim = &mq->mq_receiver;
	}

	if (FUNC3(mq, victim, mqh->mqh_handle))
		return SHM_MQ_SUCCESS;
	else
		return SHM_MQ_DETACHED;
}