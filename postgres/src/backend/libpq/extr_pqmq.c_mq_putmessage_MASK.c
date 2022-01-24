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
typedef  scalar_t__ shm_mq_result ;
struct TYPE_3__ {char* data; int len; } ;
typedef  TYPE_1__ shm_mq_iovec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EOF ; 
 int /*<<< orphan*/  MyLatch ; 
 int /*<<< orphan*/  PROCSIG_PARALLEL_MESSAGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SHM_MQ_DETACHED ; 
 scalar_t__ SHM_MQ_SUCCESS ; 
 scalar_t__ SHM_MQ_WOULD_BLOCK ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_EVENT_MQ_PUT_MESSAGE ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_LATCH_SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int pq_mq_busy ; 
 int /*<<< orphan*/ * pq_mq_handle ; 
 int /*<<< orphan*/  pq_mq_parallel_master_backend_id ; 
 scalar_t__ pq_mq_parallel_master_pid ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int,int) ; 

__attribute__((used)) static int
FUNC7(char msgtype, const char *s, size_t len)
{
	shm_mq_iovec iov[2];
	shm_mq_result result;

	/*
	 * If we're sending a message, and we have to wait because the queue is
	 * full, and then we get interrupted, and that interrupt results in trying
	 * to send another message, we respond by detaching the queue.  There's no
	 * way to return to the original context, but even if there were, just
	 * queueing the message would amount to indefinitely postponing the
	 * response to the interrupt.  So we do this instead.
	 */
	if (pq_mq_busy)
	{
		if (pq_mq_handle != NULL)
			FUNC5(pq_mq_handle);
		pq_mq_handle = NULL;
		return EOF;
	}

	/*
	 * If the message queue is already gone, just ignore the message. This
	 * doesn't necessarily indicate a problem; for example, DEBUG messages can
	 * be generated late in the shutdown sequence, after all DSMs have already
	 * been detached.
	 */
	if (pq_mq_handle == NULL)
		return 0;

	pq_mq_busy = true;

	iov[0].data = &msgtype;
	iov[0].len = 1;
	iov[1].data = s;
	iov[1].len = len;

	FUNC0(pq_mq_handle != NULL);

	for (;;)
	{
		result = FUNC6(pq_mq_handle, iov, 2, true);

		if (pq_mq_parallel_master_pid != 0)
			FUNC3(pq_mq_parallel_master_pid,
						   PROCSIG_PARALLEL_MESSAGE,
						   pq_mq_parallel_master_backend_id);

		if (result != SHM_MQ_WOULD_BLOCK)
			break;

		(void) FUNC4(MyLatch, WL_LATCH_SET | WL_EXIT_ON_PM_DEATH, 0,
						 WAIT_EVENT_MQ_PUT_MESSAGE);
		FUNC2(MyLatch);
		FUNC1();
	}

	pq_mq_busy = false;

	FUNC0(result == SHM_MQ_SUCCESS || result == SHM_MQ_DETACHED);
	if (result != SHM_MQ_SUCCESS)
		return EOF;
	return 0;
}