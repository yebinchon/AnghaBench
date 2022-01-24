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
 int FUNC1 (int /*<<< orphan*/ *,struct in6_addr*,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(const char *dst_str, int prefixlen, int metric)
{
    struct in6_addr dst;
    int ret;

    if (!dst_str)
        return -1;

    ret = FUNC0(AF_INET6, dst_str, &dst);
    if (ret != 1)
        return -1;

    FUNC2("CMD: ip -6 route add %s/%d dev %s", dst_str, prefixlen, iface);
    if (metric > 0)
        FUNC2(" metric %d", metric);
    FUNC2("\n");

    return FUNC1(NULL, &dst, prefixlen, NULL, iface, 0, metric);

}