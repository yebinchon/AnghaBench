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
struct netconfig {int dummy; } ;
struct __rpc_sockinfo {scalar_t__ si_af; int /*<<< orphan*/  si_proto; int /*<<< orphan*/  si_socktype; } ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  INVALID_SOCKET ; 
 int /*<<< orphan*/  IPV6_V6ONLY ; 
 int /*<<< orphan*/  SOL_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (struct netconfig const*,struct __rpc_sockinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

SOCKET
FUNC3(const struct netconfig *nconf)
{
	struct __rpc_sockinfo si;
	SOCKET fd;

	if (!FUNC0(nconf, &si))
		return 0;

	if ((fd = FUNC2(si.si_af, si.si_socktype, si.si_proto)) != INVALID_SOCKET &&
	    si.si_af == AF_INET6) {
		int val = 1;

		FUNC1(fd, SOL_IPV6, IPV6_V6ONLY, (const char *)&val, sizeof(val));
	}
	return fd;
}