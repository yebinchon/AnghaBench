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
typedef  int /*<<< orphan*/  val ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVBUF ; 
 int /*<<< orphan*/  SO_REUSEPORT ; 
 int FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cfg_alen ; 
 int /*<<< orphan*/  cfg_bind_addr ; 
 int /*<<< orphan*/  cfg_connect_timeout_ms ; 
 int /*<<< orphan*/  cfg_family ; 
 scalar_t__ cfg_tcp ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ interrupted ; 
 scalar_t__ FUNC6 (int,int) ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(bool do_tcp)
{
	int fd, val;

	fd = FUNC8(cfg_family, cfg_tcp ? SOCK_STREAM : SOCK_DGRAM, 0);
	if (fd == -1)
		FUNC4(1, errno, "socket");

	val = 1 << 21;
	if (FUNC7(fd, SOL_SOCKET, SO_RCVBUF, &val, sizeof(val)))
		FUNC4(1, errno, "setsockopt rcvbuf");
	val = 1;
	if (FUNC7(fd, SOL_SOCKET, SO_REUSEPORT, &val, sizeof(val)))
		FUNC4(1, errno, "setsockopt reuseport");

	if (FUNC1(fd, (void *)&cfg_bind_addr, cfg_alen))
		FUNC4(1, errno, "bind");

	if (do_tcp) {
		int accept_fd = fd;

		if (FUNC6(accept_fd, 1))
			FUNC4(1, errno, "listen");

		FUNC3(accept_fd, cfg_connect_timeout_ms);
		if (interrupted)
			FUNC5(0);

		fd = FUNC0(accept_fd, NULL, NULL);
		if (fd == -1)
			FUNC4(1, errno, "accept");
		if (FUNC2(accept_fd))
			FUNC4(1, errno, "close accept fd");
	}

	return fd;
}