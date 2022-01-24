#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  COMMERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int DoingCopyOut ; 
 int /*<<< orphan*/  FeBeWaitSet ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * MyLatch ; 
 TYPE_1__* MyProcPort ; 
 int /*<<< orphan*/  PQ_SEND_BUFFER_SIZE ; 
 int PqCommBusy ; 
 int PqCommReadingMsg ; 
 scalar_t__ PqRecvLength ; 
 scalar_t__ PqRecvPointer ; 
 int /*<<< orphan*/  PqSendBuffer ; 
 int /*<<< orphan*/  PqSendBufferSize ; 
 scalar_t__ PqSendPointer ; 
 scalar_t__ PqSendStart ; 
 int /*<<< orphan*/  TopMemoryContext ; 
 int /*<<< orphan*/  WL_LATCH_SET ; 
 int /*<<< orphan*/  WL_POSTMASTER_DEATH ; 
 int /*<<< orphan*/  WL_SOCKET_WRITEABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  socket_close ; 

void
FUNC7(void)
{
	/* initialize state variables */
	PqSendBufferSize = PQ_SEND_BUFFER_SIZE;
	PqSendBuffer = FUNC2(TopMemoryContext, PqSendBufferSize);
	PqSendPointer = PqSendStart = PqRecvPointer = PqRecvLength = 0;
	PqCommBusy = false;
	PqCommReadingMsg = false;
	DoingCopyOut = false;

	/* set up process-exit hook to close the socket */
	FUNC5(socket_close, 0);

	/*
	 * In backends (as soon as forked) we operate the underlying socket in
	 * nonblocking mode and use latches to implement blocking semantics if
	 * needed. That allows us to provide safely interruptible reads and
	 * writes.
	 *
	 * Use COMMERROR on failure, because ERROR would try to send the error to
	 * the client, which might require changing the mode again, leading to
	 * infinite recursion.
	 */
#ifndef WIN32
	if (!FUNC6(MyProcPort->sock))
		FUNC3(COMMERROR,
				(FUNC4("could not set socket to nonblocking mode: %m")));
#endif

	FeBeWaitSet = FUNC1(TopMemoryContext, 3);
	FUNC0(FeBeWaitSet, WL_SOCKET_WRITEABLE, MyProcPort->sock,
					  NULL, NULL);
	FUNC0(FeBeWaitSet, WL_LATCH_SET, -1, MyLatch, NULL);
	FUNC0(FeBeWaitSet, WL_POSTMASTER_DEATH, -1, NULL, NULL);
}