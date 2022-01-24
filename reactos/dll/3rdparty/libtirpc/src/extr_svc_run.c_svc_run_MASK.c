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
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  rwlock_t ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
#define  SOCKET_ERROR 128 
 int /*<<< orphan*/  WSAEINTR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  svc_fdset ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ svc_maxfd ; 

void
FUNC7()
{
	fd_set readfds, cleanfds;
	struct timeval timeout;
	extern rwlock_t svc_fd_lock;


	for (;;) {
		FUNC3(&svc_fd_lock);
		readfds = svc_fdset;
		cleanfds = svc_fdset;
		FUNC4(&svc_fd_lock);
		timeout.tv_sec = 30;
		timeout.tv_usec = 0;
		switch (FUNC5(svc_maxfd+1, &readfds, NULL, NULL, &timeout)) {
		case SOCKET_ERROR:
			FUNC0(&readfds);
			if (FUNC1() == WSAEINTR) {
				continue;
			}
			// XXX warn("svc_run: - select failed");
			return;
		case 0:
			FUNC2(&cleanfds, 30, FALSE);
			continue;
		default:
			FUNC6(&readfds);
		}
	}
}