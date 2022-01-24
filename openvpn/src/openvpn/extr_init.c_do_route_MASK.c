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
struct route_list {int dummy; } ;
struct route_ipv6_list {int dummy; } ;
struct plugin_list {int dummy; } ;
struct options {scalar_t__ show_net_up; scalar_t__ route_script; int /*<<< orphan*/  route_noexec; } ;
struct env_set {int dummy; } ;
struct argv {int dummy; } ;
typedef  int /*<<< orphan*/  openvpn_net_ctx_t ;

/* Variables and functions */
 int D_SHOW_NET ; 
 int M_INFO ; 
 int M_NOPREFIX ; 
 int /*<<< orphan*/  M_WARN ; 
 scalar_t__ OPENVPN_PLUGIN_FUNC_SUCCESS ; 
 int /*<<< orphan*/  OPENVPN_PLUGIN_ROUTE_UP ; 
 int /*<<< orphan*/  FUNC0 (struct options const*) ; 
 int /*<<< orphan*/  FUNC1 (struct route_list*,struct route_ipv6_list*,struct tuntap const*,int /*<<< orphan*/ ,struct env_set*,int /*<<< orphan*/ *) ; 
 struct argv FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct argv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct argv*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ management ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char*,struct env_set*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct argv*,struct env_set*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (struct plugin_list const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct env_set*) ; 
 scalar_t__ FUNC10 (struct plugin_list const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct route_list*) ; 
 int /*<<< orphan*/  FUNC12 (struct env_set*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct env_set*,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

void
FUNC16(const struct options *options,
         struct route_list *route_list,
         struct route_ipv6_list *route_ipv6_list,
         const struct tuntap *tt,
         const struct plugin_list *plugins,
         struct env_set *es,
         openvpn_net_ctx_t *ctx)
{
    if (!options->route_noexec && ( route_list || route_ipv6_list ) )
    {
        FUNC1(route_list, route_ipv6_list, tt, FUNC0(options),
                   es, ctx);
        FUNC12(es, "redirect_gateway", FUNC11(route_list));
    }
#ifdef ENABLE_MANAGEMENT
    if (management)
    {
        management_up_down(management, "UP", es);
    }
#endif

    if (FUNC10(plugins, OPENVPN_PLUGIN_ROUTE_UP))
    {
        if (FUNC9(plugins, OPENVPN_PLUGIN_ROUTE_UP, NULL, NULL, es) != OPENVPN_PLUGIN_FUNC_SUCCESS)
        {
            FUNC7(M_WARN, "WARNING: route-up plugin call failed");
        }
    }

    if (options->route_script)
    {
        struct argv argv = FUNC2();
        FUNC13(es, "script_type", "route-up");
        FUNC3(&argv, options->route_script);
        FUNC8(&argv, es, 0, "--route-up");
        FUNC4(&argv);
    }

#ifdef _WIN32
    if (options->show_net_up)
    {
        show_routes(M_INFO|M_NOPREFIX);
        show_adapters(M_INFO|M_NOPREFIX);
    }
    else if (check_debug_level(D_SHOW_NET))
    {
        show_routes(D_SHOW_NET|M_NOPREFIX);
        show_adapters(D_SHOW_NET|M_NOPREFIX);
    }
#endif
}