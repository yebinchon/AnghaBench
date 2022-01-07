
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {int dummy; } ;
struct route_list {int dummy; } ;
struct route_ipv6_list {int dummy; } ;
struct plugin_list {int dummy; } ;
struct options {scalar_t__ show_net_up; scalar_t__ route_script; int route_noexec; } ;
struct env_set {int dummy; } ;
struct argv {int dummy; } ;
typedef int openvpn_net_ctx_t ;


 int D_SHOW_NET ;
 int M_INFO ;
 int M_NOPREFIX ;
 int M_WARN ;
 scalar_t__ OPENVPN_PLUGIN_FUNC_SUCCESS ;
 int OPENVPN_PLUGIN_ROUTE_UP ;
 int ROUTE_OPTION_FLAGS (struct options const*) ;
 int add_routes (struct route_list*,struct route_ipv6_list*,struct tuntap const*,int ,struct env_set*,int *) ;
 struct argv argv_new () ;
 int argv_parse_cmd (struct argv*,scalar_t__) ;
 int argv_reset (struct argv*) ;
 scalar_t__ check_debug_level (int) ;
 scalar_t__ management ;
 int management_up_down (scalar_t__,char*,struct env_set*) ;
 int msg (int ,char*) ;
 int openvpn_run_script (struct argv*,struct env_set*,int ,char*) ;
 scalar_t__ plugin_call (struct plugin_list const*,int ,int *,int *,struct env_set*) ;
 scalar_t__ plugin_defined (struct plugin_list const*,int ) ;
 int route_did_redirect_default_gateway (struct route_list*) ;
 int setenv_int (struct env_set*,char*,int ) ;
 int setenv_str (struct env_set*,char*,char*) ;
 int show_adapters (int) ;
 int show_routes (int) ;

void
do_route(const struct options *options,
         struct route_list *route_list,
         struct route_ipv6_list *route_ipv6_list,
         const struct tuntap *tt,
         const struct plugin_list *plugins,
         struct env_set *es,
         openvpn_net_ctx_t *ctx)
{
    if (!options->route_noexec && ( route_list || route_ipv6_list ) )
    {
        add_routes(route_list, route_ipv6_list, tt, ROUTE_OPTION_FLAGS(options),
                   es, ctx);
        setenv_int(es, "redirect_gateway", route_did_redirect_default_gateway(route_list));
    }







    if (plugin_defined(plugins, OPENVPN_PLUGIN_ROUTE_UP))
    {
        if (plugin_call(plugins, OPENVPN_PLUGIN_ROUTE_UP, ((void*)0), ((void*)0), es) != OPENVPN_PLUGIN_FUNC_SUCCESS)
        {
            msg(M_WARN, "WARNING: route-up plugin call failed");
        }
    }

    if (options->route_script)
    {
        struct argv argv = argv_new();
        setenv_str(es, "script_type", "route-up");
        argv_parse_cmd(&argv, options->route_script);
        openvpn_run_script(&argv, es, 0, "--route-up");
        argv_reset(&argv);
    }
}
