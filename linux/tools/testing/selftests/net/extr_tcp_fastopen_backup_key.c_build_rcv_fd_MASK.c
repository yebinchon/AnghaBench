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
typedef  int /*<<< orphan*/  uint32_t ;
struct sockaddr_in6 {int sin6_family; void* sin6_port; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_family; void* sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  member_0; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  qlen ;
typedef  int /*<<< orphan*/  opt ;
typedef  int /*<<< orphan*/  addr6 ;
typedef  int /*<<< orphan*/  addr4 ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int N_LISTEN ; 
 int /*<<< orphan*/  PORT ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SOL_TCP ; 
 int /*<<< orphan*/  SO_REUSEPORT ; 
 int /*<<< orphan*/  TCP_FASTOPEN ; 
 scalar_t__ FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6addr_any ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC9 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(int family, int proto, int *rcv_fds)
{
	struct sockaddr_in  addr4 = {0};
	struct sockaddr_in6 addr6 = {0};
	struct sockaddr *addr;
	int opt = 1, i, sz;
	int qlen = 100;
	uint32_t keys[8];

	switch (family) {
	case AF_INET:
		addr4.sin_family = family;
		addr4.sin_addr.s_addr = FUNC3(INADDR_ANY);
		addr4.sin_port = FUNC4(PORT);
		sz = sizeof(addr4);
		addr = (struct sockaddr *)&addr4;
		break;
	case AF_INET6:
		addr6.sin6_family = AF_INET6;
		addr6.sin6_addr = in6addr_any;
		addr6.sin6_port = FUNC4(PORT);
		sz = sizeof(addr6);
		addr = (struct sockaddr *)&addr6;
		break;
	default:
		FUNC2(1, 0, "Unsupported family %d", family);
		/* clang does not recognize error() above as terminating
		 * the program, so it complains that saddr, sz are
		 * not initialized when this code path is taken. Silence it.
		 */
		return;
	}
	for (i = 0; i < FUNC0(keys); i++)
		keys[i] = FUNC6();
	for (i = 0; i < N_LISTEN; i++) {
		rcv_fds[i] = FUNC9(family, proto, 0);
		if (rcv_fds[i] < 0)
			FUNC2(1, errno, "failed to create receive socket");
		if (FUNC8(rcv_fds[i], SOL_SOCKET, SO_REUSEPORT, &opt,
			       sizeof(opt)))
			FUNC2(1, errno, "failed to set SO_REUSEPORT");
		if (FUNC1(rcv_fds[i], addr, sz))
			FUNC2(1, errno, "failed to bind receive socket");
		if (FUNC8(rcv_fds[i], SOL_TCP, TCP_FASTOPEN, &qlen,
			       sizeof(qlen)))
			FUNC2(1, errno, "failed to set TCP_FASTOPEN");
		FUNC7(rcv_fds[i], keys);
		if (proto == SOCK_STREAM && FUNC5(rcv_fds[i], 10))
			FUNC2(1, errno, "failed to listen on receive port");
	}
}