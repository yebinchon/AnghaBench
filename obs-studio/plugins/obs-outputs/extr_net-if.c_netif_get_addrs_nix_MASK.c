#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct netif_saddr_data {int dummy; } ;
struct ifaddrs {int /*<<< orphan*/  ifa_name; TYPE_1__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct TYPE_3__ {unsigned int sa_family; } ;

/* Variables and functions */
 unsigned int AF_INET ; 
 unsigned int AF_INET6 ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int /*<<< orphan*/  FUNC0 (struct ifaddrs*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int FUNC2 (struct ifaddrs**) ; 
 unsigned int FUNC3 (TYPE_1__*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ifaddrs*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct netif_saddr_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static inline void FUNC7(struct netif_saddr_data *ifaddrs)
{
	struct ifaddrs *ifaddr, *ifa;
	unsigned int family, s;
	char host[NI_MAXHOST];

	if (FUNC2(&ifaddr) == -1) {
		FUNC6("getifaddrs() failed");
		return;
	}

	for (ifa = ifaddr; ifa != NULL; ifa = ifa->ifa_next) {
		if (ifa->ifa_addr == NULL || FUNC4(ifa))
			continue;

		family = ifa->ifa_addr->sa_family;

		if ((family == AF_INET) || (family == AF_INET6)) {
			s = FUNC3(ifa->ifa_addr,
					(family == AF_INET)
						? sizeof(struct sockaddr_in)
						: sizeof(struct sockaddr_in6),
					host, NI_MAXHOST, NULL, 0,
					NI_NUMERICHOST);
			if (s != 0) {
				FUNC6("getnameinfo() failed: %s",
				     FUNC1(s));
				continue;
			}

			FUNC5(ifa->ifa_addr, ifaddrs, ifa->ifa_name);
		}
	}

	FUNC0(ifaddr);
}