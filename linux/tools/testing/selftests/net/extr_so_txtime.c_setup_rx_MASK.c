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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int tv_usec; } ;
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVTIMEO ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sockaddr *addr, socklen_t alen)
{
	struct timeval tv = { .tv_usec = 100 * 1000 };
	int fd;

	fd = FUNC3(addr->sa_family, SOCK_DGRAM, 0);
	if (fd == -1)
		FUNC1(1, errno, "socket r");

	if (FUNC0(fd, addr, alen))
		FUNC1(1, errno, "bind");

	if (FUNC2(fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)))
		FUNC1(1, errno, "setsockopt rcv timeout");

	return fd;
}