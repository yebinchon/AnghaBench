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
struct TYPE_3__ {int len; char* buf; } ;
typedef  TYPE_1__ WSABUF ;
typedef  int /*<<< orphan*/  SOCKET ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  EWOULDBLOCK ; 
 int FD_ACCEPT ; 
 int FD_CLOSE ; 
 int FD_READ ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  NOTICE ; 
 int SOCKET_ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ pgwin32_noblock ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int
FUNC8(SOCKET s, char *buf, int len, int f)
{
	WSABUF		wbuf;
	int			r;
	DWORD		b;
	DWORD		flags = f;
	int			n;

	if (FUNC6())
		return -1;

	wbuf.len = len;
	wbuf.buf = buf;

	r = FUNC2(s, &wbuf, 1, &b, &flags, NULL, NULL);
	if (r != SOCKET_ERROR)
		return b;				/* success */

	if (FUNC1() != WSAEWOULDBLOCK)
	{
		FUNC0();
		return -1;
	}

	if (pgwin32_noblock)
	{
		/*
		 * No data received, and we are in "emulated non-blocking mode", so
		 * return indicating that we'd block if we were to continue.
		 */
		errno = EWOULDBLOCK;
		return -1;
	}

	/* We're in blocking mode, so wait for data */

	for (n = 0; n < 5; n++)
	{
		if (FUNC7(s, FD_READ | FD_CLOSE | FD_ACCEPT,
										INFINITE) == 0)
			return -1;			/* errno already set */

		r = FUNC2(s, &wbuf, 1, &b, &flags, NULL, NULL);
		if (r != SOCKET_ERROR)
			return b;			/* success */
		if (FUNC1() != WSAEWOULDBLOCK)
		{
			FUNC0();
			return -1;
		}

		/*
		 * There seem to be cases on win2k (at least) where WSARecv can return
		 * WSAEWOULDBLOCK even when pgwin32_waitforsinglesocket claims the
		 * socket is readable.  In this case, just sleep for a moment and try
		 * again.  We try up to 5 times - if it fails more than that it's not
		 * likely to ever come back.
		 */
		FUNC5(10000);
	}
	FUNC3(NOTICE,
			(FUNC4("could not read from ready socket (after retries)")));
	errno = EWOULDBLOCK;
	return -1;
}