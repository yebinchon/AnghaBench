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
struct route_list {int dummy; } ;
struct options {scalar_t__ topology; char* ifconfig_remote_netmask; char* route_default_gateway; int route_default_metric; int /*<<< orphan*/  routes; int /*<<< orphan*/  dev_type; int /*<<< orphan*/  dev; } ;
struct link_socket_info {int dummy; } ;
struct env_set {int dummy; } ;
typedef  int /*<<< orphan*/  openvpn_net_ctx_t ;

/* Variables and functions */
 int DEV_TYPE_TUN ; 
 scalar_t__ TOP_NET30 ; 
 scalar_t__ TOP_P2P ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct route_list*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,struct env_set*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct link_socket_info const*) ; 
 int /*<<< orphan*/  FUNC3 (struct env_set*,struct route_list*) ; 

__attribute__((used)) static void
FUNC4(const struct options *options,
                   struct route_list *route_list,
                   const struct link_socket_info *link_socket_info,
                   struct env_set *es,
                   openvpn_net_ctx_t *ctx)
{
    const char *gw = NULL;
    int dev = FUNC0(options->dev, options->dev_type);
    int metric = 0;

    if (dev == DEV_TYPE_TUN && (options->topology == TOP_NET30 || options->topology == TOP_P2P))
    {
        gw = options->ifconfig_remote_netmask;
    }
    if (options->route_default_gateway)
    {
        gw = options->route_default_gateway;
    }
    if (options->route_default_metric)
    {
        metric = options->route_default_metric;
    }

    if (FUNC1(route_list,
                        options->routes,
                        gw,
                        metric,
                        FUNC2(link_socket_info),
                        es,
                        ctx))
    {
        /* copy routes to environment */
        FUNC3(es, route_list);
    }
}