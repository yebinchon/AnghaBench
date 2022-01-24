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
struct epoll_event {int events; TYPE_1__ data; } ;

/* Variables and functions */
 int EPOLLIN ; 
 int /*<<< orphan*/  EPOLL_CLOEXEC ; 
 int /*<<< orphan*/  EPOLL_CTL_ADD ; 
 int MAX_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int,struct epoll_event*) ; 
 int FUNC3 (int,struct epoll_event*,int,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*,...) ; 

__attribute__((used)) static void FUNC5(const char *test_name, int pidfd)
{
	int c;
	int epoll_fd = FUNC1(EPOLL_CLOEXEC);
	struct epoll_event event, events[MAX_EVENTS];

	if (epoll_fd == -1)
		FUNC4("%s test: Failed to create epoll file descriptor "
				   "(errno %d)\n",
				   test_name, errno);

	event.events = EPOLLIN;
	event.data.fd = pidfd;

	if (FUNC2(epoll_fd, EPOLL_CTL_ADD, pidfd, &event)) {
		FUNC4("%s test: Failed to add epoll file descriptor "
				   "(errno %d)\n",
				   test_name, errno);
	}

	c = FUNC3(epoll_fd, events, MAX_EVENTS, 5000);
	if (c != 1 || !(events[0].events & EPOLLIN))
		FUNC4("%s test: Unexpected epoll_wait result (c=%d, events=%x) ",
				   "(errno %d)\n",
				   test_name, c, events[0].events, errno);

	FUNC0(epoll_fd);
	return;

}