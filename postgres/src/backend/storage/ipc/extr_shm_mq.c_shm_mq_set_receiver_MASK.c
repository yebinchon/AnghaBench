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
struct TYPE_5__ {int /*<<< orphan*/  mq_mutex; TYPE_2__* mq_sender; TYPE_2__* mq_receiver; } ;
typedef  TYPE_1__ shm_mq ;
struct TYPE_6__ {int /*<<< orphan*/  procLatch; } ;
typedef  TYPE_2__ PGPROC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(shm_mq *mq, PGPROC *proc)
{
	PGPROC	   *sender;

	FUNC2(&mq->mq_mutex);
	FUNC0(mq->mq_receiver == NULL);
	mq->mq_receiver = proc;
	sender = mq->mq_sender;
	FUNC3(&mq->mq_mutex);

	if (sender != NULL)
		FUNC1(&sender->procLatch);
}