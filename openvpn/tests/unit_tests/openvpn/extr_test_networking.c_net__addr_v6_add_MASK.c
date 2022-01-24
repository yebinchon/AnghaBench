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
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 char* iface ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,struct in6_addr*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int,char*) ; 

__attribute__((used)) static int
FUNC3(const char *addr_str, int prefixlen)
{
    struct in6_addr addr;
    int ret;

    ret = FUNC0(AF_INET6, addr_str, &addr);
    if (ret != 1)
        return -1;

    FUNC2("CMD: ip -6 addr add %s/%d dev %s\n", addr_str, prefixlen, iface);

    return FUNC1(NULL, iface, &addr, prefixlen);
}