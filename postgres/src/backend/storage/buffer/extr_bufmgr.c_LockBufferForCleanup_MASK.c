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
typedef  int uint32 ;
struct TYPE_6__ {scalar_t__ wait_backend_pid; } ;
typedef  TYPE_1__ BufferDesc ;
typedef  int Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BM_PIN_COUNT_WAITER ; 
 int /*<<< orphan*/  BUFFER_LOCK_EXCLUSIVE ; 
 int /*<<< orphan*/  BUFFER_LOCK_UNLOCK ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__* FUNC4 (int) ; 
 int FUNC5 (int) ; 
 scalar_t__ InHotStandby ; 
 int* LocalRefCount ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ MyProcPid ; 
 int /*<<< orphan*/  PG_WAIT_BUFFER_PIN ; 
 TYPE_1__* PinCountWaitBuf ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 

void
FUNC13(Buffer buffer)
{
	BufferDesc *bufHdr;

	FUNC0(FUNC3(buffer));
	FUNC0(PinCountWaitBuf == NULL);

	if (FUNC2(buffer))
	{
		/* There should be exactly one pin */
		if (LocalRefCount[-buffer - 1] != 1)
			FUNC12(ERROR, "incorrect local pin count: %d",
				 LocalRefCount[-buffer - 1]);
		/* Nobody else to wait for */
		return;
	}

	/* There should be exactly one local pin */
	if (FUNC5(buffer) != 1)
		FUNC12(ERROR, "incorrect local pin count: %d",
			 FUNC5(buffer));

	bufHdr = FUNC4(buffer - 1);

	for (;;)
	{
		uint32		buf_state;

		/* Try to acquire lock */
		FUNC7(buffer, BUFFER_LOCK_EXCLUSIVE);
		buf_state = FUNC6(bufHdr);

		FUNC0(FUNC1(buf_state) > 0);
		if (FUNC1(buf_state) == 1)
		{
			/* Successfully acquired exclusive lock with pincount 1 */
			FUNC11(bufHdr, buf_state);
			return;
		}
		/* Failed, so mark myself as waiting for pincount 1 */
		if (buf_state & BM_PIN_COUNT_WAITER)
		{
			FUNC11(bufHdr, buf_state);
			FUNC7(buffer, BUFFER_LOCK_UNLOCK);
			FUNC12(ERROR, "multiple backends attempting to wait for pincount 1");
		}
		bufHdr->wait_backend_pid = MyProcPid;
		PinCountWaitBuf = bufHdr;
		buf_state |= BM_PIN_COUNT_WAITER;
		FUNC11(bufHdr, buf_state);
		FUNC7(buffer, BUFFER_LOCK_UNLOCK);

		/* Wait to be signaled by UnpinBuffer() */
		if (InHotStandby)
		{
			/* Publish the bufid that Startup process waits on */
			FUNC10(buffer - 1);
			/* Set alarm and then wait to be signaled by UnpinBuffer() */
			FUNC9();
			/* Reset the published bufid */
			FUNC10(-1);
		}
		else
			FUNC8(PG_WAIT_BUFFER_PIN);

		/*
		 * Remove flag marking us as waiter. Normally this will not be set
		 * anymore, but ProcWaitForSignal() can return for other signals as
		 * well.  We take care to only reset the flag if we're the waiter, as
		 * theoretically another backend could have started waiting. That's
		 * impossible with the current usages due to table level locking, but
		 * better be safe.
		 */
		buf_state = FUNC6(bufHdr);
		if ((buf_state & BM_PIN_COUNT_WAITER) != 0 &&
			bufHdr->wait_backend_pid == MyProcPid)
			buf_state &= ~BM_PIN_COUNT_WAITER;
		FUNC11(bufHdr, buf_state);

		PinCountWaitBuf = NULL;
		/* Loop back and try again */
	}
}