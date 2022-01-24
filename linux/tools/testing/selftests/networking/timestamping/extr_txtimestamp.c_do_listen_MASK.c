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

/* Variables and functions */
 int SOCK_DGRAM ; 
 int SOCK_RAW ; 
 int SOCK_STREAM ; 
 scalar_t__ FUNC0 (int,void*,int) ; 
 int cfg_proto ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int FUNC3 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int family, void *addr, int alen)
{
	int fd, type;

	type = cfg_proto == SOCK_RAW ? SOCK_DGRAM : cfg_proto;

	fd = FUNC3(family, type, 0);
	if (fd == -1)
		FUNC1(1, errno, "socket rx");

	if (FUNC0(fd, addr, alen))
		FUNC1(1, errno, "bind rx");

	if (type == SOCK_STREAM && FUNC2(fd, 10))
		FUNC1(1, errno, "listen rx");

	/* leave fd open, will be closed on process exit.
	 * this enables connect() to succeed and avoids icmp replies
	 */
}