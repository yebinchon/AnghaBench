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
struct route_ipv6_list {int dummy; } ;
struct options {char* ifconfig_ipv6_remote; char* route_ipv6_default_gateway; int route_default_metric; TYPE_1__* routes_ipv6; } ;
struct link_socket_info {int dummy; } ;
struct env_set {int dummy; } ;
typedef  int /*<<< orphan*/  openvpn_net_ctx_t ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  gc; } ;

/* Variables and functions */
 int RG_REROUTE_GW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct route_ipv6_list*,TYPE_1__*,char const*,int,int /*<<< orphan*/ ,struct env_set*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct link_socket_info const*) ; 
 int /*<<< orphan*/  FUNC3 (struct env_set*,struct route_ipv6_list*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(const struct options *options,
                        struct route_ipv6_list *route_ipv6_list,
                        const struct link_socket_info *link_socket_info,
                        struct env_set *es,
                        openvpn_net_ctx_t *ctx)
{
    const char *gw = NULL;
    int metric = -1;            /* no metric set */

    gw = options->ifconfig_ipv6_remote;         /* default GW = remote end */
    if (options->route_ipv6_default_gateway)
    {
        gw = options->route_ipv6_default_gateway;
    }

    if (options->route_default_metric)
    {
        metric = options->route_default_metric;
    }

    /* redirect (IPv6) gateway to VPN?  if yes, add a few more specifics
     */
    if (options->routes_ipv6->flags & RG_REROUTE_GW)
    {
        char *opt_list[] = { "::/3", "2000::/4", "3000::/4", "fc00::/7", NULL };
        int i;

        for (i = 0; opt_list[i]; i++)
        {
            FUNC0( options->routes_ipv6,
                                           FUNC4(opt_list[i], options->routes_ipv6->gc),
                                           NULL, NULL );
        }
    }

    if (FUNC1(route_ipv6_list,
                             options->routes_ipv6,
                             gw,
                             metric,
                             FUNC2(link_socket_info),
                             es,
                             ctx))
    {
        /* copy routes to environment */
        FUNC3(es, route_ipv6_list);
    }
}