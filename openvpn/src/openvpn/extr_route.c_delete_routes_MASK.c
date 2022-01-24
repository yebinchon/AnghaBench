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
struct tuntap {int dummy; } ;
struct route_list {int iflags; int /*<<< orphan*/  rgi; struct route_ipv4* routes; } ;
struct route_ipv6_list {int iflags; struct route_ipv6* routes_ipv6; } ;
struct route_ipv6 {struct route_ipv6* next; } ;
struct route_ipv4 {struct route_ipv4* next; } ;
struct env_set {int dummy; } ;
typedef  int /*<<< orphan*/  openvpn_net_ctx_t ;

/* Variables and functions */
 int RL_ROUTES_ADDED ; 
 int /*<<< orphan*/  FUNC0 (struct route_ipv6_list*) ; 
 int /*<<< orphan*/  FUNC1 (struct route_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct route_ipv4*,struct tuntap const*,unsigned int,int /*<<< orphan*/ *,struct env_set const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct route_ipv6*,struct tuntap const*,unsigned int,struct env_set const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct route_list*,struct tuntap const*,unsigned int,struct env_set const*,int /*<<< orphan*/ *) ; 

void
FUNC5(struct route_list *rl, struct route_ipv6_list *rl6,
              const struct tuntap *tt, unsigned int flags,
              const struct env_set *es, openvpn_net_ctx_t *ctx)
{
    if (rl && rl->iflags & RL_ROUTES_ADDED)
    {
        struct route_ipv4 *r;
        for (r = rl->routes; r; r = r->next)
        {
            FUNC2(r, tt, flags, &rl->rgi, es, ctx);
        }
        rl->iflags &= ~RL_ROUTES_ADDED;
    }

    FUNC4(rl, tt, flags, es, ctx);

    if (rl)
    {
        FUNC1(rl);
    }

    if (rl6 && (rl6->iflags & RL_ROUTES_ADDED) )
    {
        struct route_ipv6 *r6;
        for (r6 = rl6->routes_ipv6; r6; r6 = r6->next)
        {
            FUNC3(r6, tt, flags, es, ctx);
        }
        rl6->iflags &= ~RL_ROUTES_ADDED;
    }

    if (rl6)
    {
        FUNC0(rl6);
    }
}