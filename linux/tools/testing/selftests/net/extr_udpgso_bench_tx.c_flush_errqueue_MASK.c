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
struct pollfd {int fd; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 scalar_t__ cfg_verbose ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC4(int fd, const bool do_poll)
{
	if (do_poll) {
		struct pollfd fds = {0};
		int ret;

		fds.fd = fd;
		ret = FUNC3(&fds, 1, 500);
		if (ret == 0) {
			if (cfg_verbose)
				FUNC2(stderr, "poll timeout\n");
		} else if (ret < 0) {
			FUNC0(1, errno, "poll");
		}
	}

	FUNC1(fd);
}