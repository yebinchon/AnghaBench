#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
struct TYPE_10__ {int events; } ;
typedef  TYPE_2__ WaitEvent ;
struct TYPE_11__ {int /*<<< orphan*/  noblock; TYPE_1__* gss; scalar_t__ ssl_in_use; } ;
struct TYPE_9__ {scalar_t__ enc; } ;
typedef  TYPE_3__ Port ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  ERRCODE_ADMIN_SHUTDOWN ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  FeBeWaitSet ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MyLatch ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WAIT_EVENT_CLIENT_WRITE ; 
 int WL_LATCH_SET ; 
 int WL_POSTMASTER_DEATH ; 
 int WL_SOCKET_WRITEABLE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*,void*,size_t) ; 
 scalar_t__ FUNC6 (TYPE_3__*,void*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC10 (TYPE_3__*,void*,size_t) ; 

ssize_t
FUNC11(Port *port, void *ptr, size_t len)
{
	ssize_t		n;
	int			waitfor;

	/* Deal with any already-pending interrupt condition. */
	FUNC2(false);

retry:
	waitfor = 0;
#ifdef USE_SSL
	if (port->ssl_in_use)
	{
		n = be_tls_write(port, ptr, len, &waitfor);
	}
	else
#endif
#ifdef ENABLE_GSS
	if (port->gss->enc)
	{
		n = be_gssapi_write(port, ptr, len);
		waitfor = WL_SOCKET_WRITEABLE;
	}
	else
#endif
	{
		n = FUNC10(port, ptr, len);
		waitfor = WL_SOCKET_WRITEABLE;
	}

	if (n < 0 && !port->noblock && (errno == EWOULDBLOCK || errno == EAGAIN))
	{
		WaitEvent	event;

		FUNC0(waitfor);

		FUNC1(FeBeWaitSet, 0, waitfor, NULL);

		FUNC4(FeBeWaitSet, -1 /* no timeout */ , &event, 1,
						 WAIT_EVENT_CLIENT_WRITE);

		/* See comments in secure_read. */
		if (event.events & WL_POSTMASTER_DEATH)
			FUNC7(FATAL,
					(FUNC8(ERRCODE_ADMIN_SHUTDOWN),
					 FUNC9("terminating connection due to unexpected postmaster exit")));

		/* Handle interrupt. */
		if (event.events & WL_LATCH_SET)
		{
			FUNC3(MyLatch);
			FUNC2(true);

			/*
			 * We'll retry the write. Most likely it will return immediately
			 * because there's still no buffer space available, and we'll wait
			 * for the socket to become ready again.
			 */
		}
		goto retry;
	}

	/*
	 * Process interrupts that happened during a successful (or non-blocking,
	 * or hard-failed) write.
	 */
	FUNC2(false);

	return n;
}