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
struct sockaddr_in6 {int sin6_family; void* sin6_port; int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_family; void* sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  member_0; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  saddr6 ;
typedef  int /*<<< orphan*/  saddr4 ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  INADDR_ANY ; 
 char* IP4_ADDR ; 
 char* IP6_ADDR ; 
 int /*<<< orphan*/  MSG_FASTOPEN ; 
 int /*<<< orphan*/  PORT ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in6addr_any ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(int family, int proto)
{
	struct sockaddr_in  saddr4 = {0};
	struct sockaddr_in  daddr4 = {0};
	struct sockaddr_in6 saddr6 = {0};
	struct sockaddr_in6 daddr6 = {0};
	struct sockaddr *saddr, *daddr;
	int fd, sz, ret;
	char data[1];

	switch (family) {
	case AF_INET:
		saddr4.sin_family = AF_INET;
		saddr4.sin_addr.s_addr = FUNC2(INADDR_ANY);
		saddr4.sin_port = 0;

		daddr4.sin_family = AF_INET;
		if (!FUNC4(family, IP4_ADDR, &daddr4.sin_addr.s_addr))
			FUNC1(1, errno, "inet_pton failed: %s", IP4_ADDR);
		daddr4.sin_port = FUNC3(PORT);

		sz = sizeof(saddr4);
		saddr = (struct sockaddr *)&saddr4;
		daddr = (struct sockaddr *)&daddr4;
		break;
	case AF_INET6:
		saddr6.sin6_family = AF_INET6;
		saddr6.sin6_addr = in6addr_any;

		daddr6.sin6_family = AF_INET6;
		if (!FUNC4(family, IP6_ADDR, &daddr6.sin6_addr))
			FUNC1(1, errno, "inet_pton failed: %s", IP6_ADDR);
		daddr6.sin6_port = FUNC3(PORT);

		sz = sizeof(saddr6);
		saddr = (struct sockaddr *)&saddr6;
		daddr = (struct sockaddr *)&daddr6;
		break;
	default:
		FUNC1(1, 0, "Unsupported family %d", family);
		/* clang does not recognize error() above as terminating
		 * the program, so it complains that saddr, daddr, sz are
		 * not initialized when this code path is taken. Silence it.
		 */
		return -1;
	}
	fd = FUNC6(family, proto, 0);
	if (fd < 0)
		FUNC1(1, errno, "failed to create send socket");
	if (FUNC0(fd, saddr, sz))
		FUNC1(1, errno, "failed to bind send socket");
	data[0] = 'a';
	ret = FUNC5(fd, data, 1, MSG_FASTOPEN, daddr, sz);
	if (ret != 1)
		FUNC1(1, errno, "failed to sendto");

	return fd;
}