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
struct sockaddr {scalar_t__ sa_family; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int CONST_MTU_TEST ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVTIMEO ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 scalar_t__ cfg_do_connected ; 
 scalar_t__ cfg_do_connectionless ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct sockaddr *addr, socklen_t alen)
{
	struct timeval tv = { .tv_usec = 100 * 1000 };
	int fdr, fdt, val;

	fdr = FUNC10(addr->sa_family, SOCK_DGRAM, 0);
	if (fdr == -1)
		FUNC3(1, errno, "socket r");

	if (FUNC0(fdr, addr, alen))
		FUNC3(1, errno, "bind");

	/* Have tests fail quickly instead of hang */
	if (FUNC9(fdr, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv)))
		FUNC3(1, errno, "setsockopt rcv timeout");

	fdt = FUNC10(addr->sa_family, SOCK_DGRAM, 0);
	if (fdt == -1)
		FUNC3(1, errno, "socket t");

	/* Do not fragment these datagrams: only succeed if GSO works */
	FUNC7(fdt, addr->sa_family == AF_INET);

	if (cfg_do_connectionless) {
		FUNC6(fdt, CONST_MTU_TEST);
		FUNC5(fdt, fdr, addr, alen);
	}

	if (cfg_do_connected) {
		FUNC6(fdt, CONST_MTU_TEST + 100);
		FUNC8(CONST_MTU_TEST, addr->sa_family == AF_INET);

		if (FUNC2(fdt, addr, alen))
			FUNC3(1, errno, "connect");

		val = FUNC4(fdt, addr->sa_family == AF_INET);
		if (val != CONST_MTU_TEST)
			FUNC3(1, 0, "bad path mtu %u\n", val);

		FUNC5(fdt, fdr, addr, 0 /* use connected addr */);
	}

	if (FUNC1(fdt))
		FUNC3(1, errno, "close t");
	if (FUNC1(fdr))
		FUNC3(1, errno, "close r");
}