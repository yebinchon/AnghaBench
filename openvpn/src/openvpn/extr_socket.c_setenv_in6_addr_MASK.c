#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct in6_addr {int dummy; } ;
struct TYPE_3__ {struct in6_addr sin6_addr; int /*<<< orphan*/  sin6_family; } ;
struct TYPE_4__ {TYPE_1__ in6; } ;
struct openvpn_sockaddr {TYPE_2__ addr; } ;
struct env_set {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (struct openvpn_sockaddr) ; 
 int /*<<< orphan*/  FUNC1 (struct in6_addr const*) ; 
 unsigned int const SA_SET_IF_NONZERO ; 
 int /*<<< orphan*/  FUNC2 (struct env_set*,char const*,struct openvpn_sockaddr*,unsigned int const) ; 

void
FUNC3(struct env_set *es,
                const char *name_prefix,
                const struct in6_addr *addr,
                const unsigned int flags)
{
    if (!FUNC1(addr) || !(flags & SA_SET_IF_NONZERO))
    {
        struct openvpn_sockaddr si;
        FUNC0(si);
        si.addr.in6.sin6_family = AF_INET6;
        si.addr.in6.sin6_addr = *addr;
        FUNC2(es, name_prefix, &si, flags);
    }
}