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
typedef  scalar_t__ shm_mq_result ;
typedef  int /*<<< orphan*/  shm_mq_handle ;
typedef  int /*<<< orphan*/  Size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ SHM_MQ_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static void
FUNC3(shm_mq_handle *inqh, shm_mq_handle *outqh)
{
	Size		len;
	void	   *data;
	shm_mq_result res;

	for (;;)
	{
		/* Notice any interrupts that have occurred. */
		FUNC0();

		/* Receive a message. */
		res = FUNC1(inqh, &len, &data, false);
		if (res != SHM_MQ_SUCCESS)
			break;

		/* Send it back out. */
		res = FUNC2(outqh, len, data, false);
		if (res != SHM_MQ_SUCCESS)
			break;
	}
}