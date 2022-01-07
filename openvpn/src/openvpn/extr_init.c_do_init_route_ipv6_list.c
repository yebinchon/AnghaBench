
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct route_ipv6_list {int dummy; } ;
struct options {char* ifconfig_ipv6_remote; char* route_ipv6_default_gateway; int route_default_metric; TYPE_1__* routes_ipv6; } ;
struct link_socket_info {int dummy; } ;
struct env_set {int dummy; } ;
typedef int openvpn_net_ctx_t ;
struct TYPE_3__ {int flags; int gc; } ;


 int RG_REROUTE_GW ;
 int add_route_ipv6_to_option_list (TYPE_1__*,int ,int *,int *) ;
 scalar_t__ init_route_ipv6_list (struct route_ipv6_list*,TYPE_1__*,char const*,int,int ,struct env_set*,int *) ;
 int link_socket_current_remote_ipv6 (struct link_socket_info const*) ;
 int setenv_routes_ipv6 (struct env_set*,struct route_ipv6_list*) ;
 int string_alloc (char*,int ) ;

__attribute__((used)) static void
do_init_route_ipv6_list(const struct options *options,
                        struct route_ipv6_list *route_ipv6_list,
                        const struct link_socket_info *link_socket_info,
                        struct env_set *es,
                        openvpn_net_ctx_t *ctx)
{
    const char *gw = ((void*)0);
    int metric = -1;

    gw = options->ifconfig_ipv6_remote;
    if (options->route_ipv6_default_gateway)
    {
        gw = options->route_ipv6_default_gateway;
    }

    if (options->route_default_metric)
    {
        metric = options->route_default_metric;
    }



    if (options->routes_ipv6->flags & RG_REROUTE_GW)
    {
        char *opt_list[] = { "::/3", "2000::/4", "3000::/4", "fc00::/7", ((void*)0) };
        int i;

        for (i = 0; opt_list[i]; i++)
        {
            add_route_ipv6_to_option_list( options->routes_ipv6,
                                           string_alloc(opt_list[i], options->routes_ipv6->gc),
                                           ((void*)0), ((void*)0) );
        }
    }

    if (init_route_ipv6_list(route_ipv6_list,
                             options->routes_ipv6,
                             gw,
                             metric,
                             link_socket_current_remote_ipv6(link_socket_info),
                             es,
                             ctx))
    {

        setenv_routes_ipv6(es, route_ipv6_list);
    }
}
