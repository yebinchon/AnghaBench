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
struct timeval {long tv_sec; long tv_usec; } ;
typedef  int pgsocket ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  PGconn ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int) ; 
 int PGINVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 

__attribute__((used)) static int
FUNC8(PGconn *conn, long timeout_ms, pgsocket stop_socket)
{
	int			ret;
	fd_set		input_mask;
	int			connsocket;
	int			maxfd;
	struct timeval timeout;
	struct timeval *timeoutptr;

	connsocket = FUNC5(conn);
	if (connsocket < 0)
	{
		FUNC6("invalid socket: %s", FUNC4(conn));
		return -1;
	}

	FUNC2(&input_mask);
	FUNC1(connsocket, &input_mask);
	maxfd = connsocket;
	if (stop_socket != PGINVALID_SOCKET)
	{
		FUNC1(stop_socket, &input_mask);
		maxfd = FUNC3(maxfd, stop_socket);
	}

	if (timeout_ms < 0)
		timeoutptr = NULL;
	else
	{
		timeout.tv_sec = timeout_ms / 1000L;
		timeout.tv_usec = (timeout_ms % 1000L) * 1000L;
		timeoutptr = &timeout;
	}

	ret = FUNC7(maxfd + 1, &input_mask, NULL, NULL, timeoutptr);

	if (ret < 0)
	{
		if (errno == EINTR)
			return 0;			/* Got a signal, so not an error */
		FUNC6("select() failed: %m");
		return -1;
	}
	if (ret > 0 && FUNC0(connsocket, &input_mask))
		return 1;				/* Got input on connection socket */

	return 0;					/* Got timeout or input on stop_socket */
}