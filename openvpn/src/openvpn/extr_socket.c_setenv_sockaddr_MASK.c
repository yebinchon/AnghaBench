#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/ * s6_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  sin6_port; TYPE_5__ sin6_addr; } ;
struct TYPE_9__ {int sa_family; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  sin_port; struct in_addr sin_addr; } ;
struct TYPE_8__ {TYPE_2__ in6; TYPE_4__ sa; TYPE_1__ in4; } ;
struct openvpn_sockaddr {TYPE_3__ addr; } ;
struct env_set {int dummy; } ;
typedef  int /*<<< orphan*/  name_buf ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 unsigned int const SA_IP_PORT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC2 (struct in_addr) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct env_set*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct env_set*,char*,char*) ; 

void
FUNC8(struct env_set *es, const char *name_prefix, const struct openvpn_sockaddr *addr, const unsigned int flags)
{
    char name_buf[256];

    char buf[128];
    switch (addr->addr.sa.sa_family)
    {
        case AF_INET:
            if (flags & SA_IP_PORT)
            {
                FUNC5(name_buf, sizeof(name_buf), "%s_ip", name_prefix);
            }
            else
            {
                FUNC5(name_buf, sizeof(name_buf), "%s", name_prefix);
            }

            FUNC7(es, name_buf, FUNC2(addr->addr.in4.sin_addr));

            if ((flags & SA_IP_PORT) && addr->addr.in4.sin_port)
            {
                FUNC5(name_buf, sizeof(name_buf), "%s_port", name_prefix);
                FUNC6(es, name_buf, FUNC4(addr->addr.in4.sin_port));
            }
            break;

        case AF_INET6:
            if (FUNC0( &addr->addr.in6.sin6_addr ))
            {
                struct in_addr ia;
                FUNC3(&ia.s_addr, &addr->addr.in6.sin6_addr.s6_addr[12],
                       sizeof(ia.s_addr));
                FUNC5(name_buf, sizeof(name_buf), "%s_ip", name_prefix);
                FUNC5(buf, sizeof(buf), "%s", FUNC2(ia) );
            }
            else
            {
                FUNC5(name_buf, sizeof(name_buf), "%s_ip6", name_prefix);
                FUNC1(&addr->addr.sa, sizeof(struct sockaddr_in6),
                            buf, sizeof(buf), NULL, 0, NI_NUMERICHOST);
            }
            FUNC7(es, name_buf, buf);

            if ((flags & SA_IP_PORT) && addr->addr.in6.sin6_port)
            {
                FUNC5(name_buf, sizeof(name_buf), "%s_port", name_prefix);
                FUNC6(es, name_buf, FUNC4(addr->addr.in6.sin6_port));
            }
            break;
    }
}