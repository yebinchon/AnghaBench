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
struct sockaddr_storage {int /*<<< orphan*/  ss_family; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int /*<<< orphan*/  LPSOCKADDR ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int SOCKET_ERROR ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr_storage*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

bool FUNC6(struct sockaddr_storage *out, int *addr_len,
		       const char *addr)
{
	bool ipv6;

	FUNC3(out, 0, sizeof(*out));
	*addr_len = 0;

	if (!addr)
		return false;

	ipv6 = (FUNC4(addr, ':') != NULL);
	out->ss_family = ipv6 ? AF_INET6 : AF_INET;
	*addr_len = sizeof(*out);

#ifdef _WIN32
	int ret = WSAStringToAddressA((LPSTR)addr, out->ss_family, NULL,
				      (LPSOCKADDR)out, addr_len);
	if (ret == SOCKET_ERROR)
		warn("Could not parse address, error code: %d", GetLastError());
	return ret != SOCKET_ERROR;
#else
	struct sockaddr_in *sin = (struct sockaddr_in *)out;
	if (FUNC2(out->ss_family, addr, &sin->sin_addr)) {
		*addr_len = ipv6 ? sizeof(struct sockaddr_in6)
				 : sizeof(struct sockaddr_in);
		return true;
	}

	return false;
#endif
}