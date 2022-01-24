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
struct TYPE_2__ {int fd; } ;
struct epoll_event {TYPE_1__ data; int /*<<< orphan*/  events; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int /*<<< orphan*/  EPOLL_CTL_DEL ; 
 int N_LISTEN ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ do_rotate ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int FUNC6 (int,struct epoll_event*,int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC8 (int) ; 
 int* rcv_fds ; 
 int FUNC9 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(int family)
{
	struct epoll_event ev;
	int i, send_fd;
	int n_loops = 10000;
	int rotate_key_fd = 0;
	int key_rotate_interval = 50;
	int fd, epfd;
	char buf[1];

	FUNC1(family, SOCK_STREAM, rcv_fds);
	epfd = FUNC4(1);
	if (epfd < 0)
		FUNC7(1, errno, "failed to create epoll");
	ev.events = EPOLLIN;
	for (i = 0; i < N_LISTEN; i++) {
		ev.data.fd = rcv_fds[i];
		if (FUNC5(epfd, EPOLL_CTL_ADD, rcv_fds[i], &ev))
			FUNC7(1, errno, "failed to register sock epoll");
	}
	while (n_loops--) {
		send_fd = FUNC3(family, SOCK_STREAM);
		if (do_rotate && ((n_loops % key_rotate_interval) == 0)) {
			FUNC10(rcv_fds[rotate_key_fd]);
			if (++rotate_key_fd >= N_LISTEN)
				rotate_key_fd = 0;
		}
		while (1) {
			i = FUNC6(epfd, &ev, 1, -1);
			if (i < 0)
				FUNC7(1, errno, "epoll_wait failed");
			if (FUNC8(ev.data.fd)) {
				fd = FUNC0(ev.data.fd, NULL, NULL);
				if (fd < 0)
					FUNC7(1, errno, "failed to accept");
				ev.data.fd = fd;
				if (FUNC5(epfd, EPOLL_CTL_ADD, fd, &ev))
					FUNC7(1, errno, "failed epoll add");
				continue;
			}
			i = FUNC9(ev.data.fd, buf, sizeof(buf), 0);
			if (i != 1)
				FUNC7(1, errno, "failed recv data");
			if (FUNC5(epfd, EPOLL_CTL_DEL, ev.data.fd, NULL))
				FUNC7(1, errno, "failed epoll del");
			FUNC2(ev.data.fd);
			break;
		}
		FUNC2(send_fd);
	}
	for (i = 0; i < N_LISTEN; i++)
		FUNC2(rcv_fds[i]);
}