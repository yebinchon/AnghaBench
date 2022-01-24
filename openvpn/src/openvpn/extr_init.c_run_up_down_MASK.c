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
struct plugin_list {int dummy; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct argv {int dummy; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  M_FATAL ; 
 int /*<<< orphan*/  M_INFO ; 
 scalar_t__ OPENVPN_PLUGIN_FUNC_SUCCESS ; 
 int /*<<< orphan*/  S_FATAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct argv*) ; 
 struct argv FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct argv*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct argv*,char*,char const*,int,int,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct argv*,char*,char const*,int,int,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct argv*) ; 
 int /*<<< orphan*/  FUNC7 (struct gc_arena*) ; 
 struct gc_arena FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct argv*,struct env_set*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (struct plugin_list const*,int,struct argv*,int /*<<< orphan*/ *,struct env_set*) ; 
 scalar_t__ FUNC12 (struct plugin_list const*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct env_set*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct env_set*,char*,char const*) ; 

__attribute__((used)) static void
FUNC15(const char *command,
            const struct plugin_list *plugins,
            int plugin_type,
            const char *arg,
#ifdef _WIN32
            DWORD adapter_index,
#endif
            const char *dev_type,
            int tun_mtu,
            int link_mtu,
            const char *ifconfig_local,
            const char *ifconfig_remote,
            const char *context,
            const char *signal_text,
            const char *script_type,
            struct env_set *es)
{
    struct gc_arena gc = FUNC8();

    if (signal_text)
    {
        FUNC14(es, "signal", signal_text);
    }
    FUNC14(es, "script_context", context);
    FUNC13(es, "tun_mtu", tun_mtu);
    FUNC13(es, "link_mtu", link_mtu);
    FUNC14(es, "dev", arg);
    if (dev_type)
    {
        FUNC14(es, "dev_type", dev_type);
    }
#ifdef _WIN32
    setenv_int(es, "dev_idx", adapter_index);
#endif

    if (!ifconfig_local)
    {
        ifconfig_local = "";
    }
    if (!ifconfig_remote)
    {
        ifconfig_remote = "";
    }
    if (!context)
    {
        context = "";
    }

    if (FUNC12(plugins, plugin_type))
    {
        struct argv argv = FUNC2();
        FUNC0(arg);
        FUNC4(&argv,
                    "%s %d %d %s %s %s",
                    arg,
                    tun_mtu, link_mtu,
                    ifconfig_local, ifconfig_remote,
                    context);

        if (FUNC11(plugins, plugin_type, &argv, NULL, es) != OPENVPN_PLUGIN_FUNC_SUCCESS)
        {
            FUNC9(M_FATAL, "ERROR: up/down plugin call failed");
        }

        FUNC6(&argv);
    }

    if (command)
    {
        struct argv argv = FUNC2();
        FUNC0(arg);
        FUNC14(es, "script_type", script_type);
        FUNC3(&argv, command);
        FUNC5(&argv, "%s %d %d %s %s %s", arg, tun_mtu, link_mtu,
                        ifconfig_local, ifconfig_remote, context);
        FUNC1(M_INFO, &argv);
        FUNC10(&argv, es, S_FATAL, "--up/--down");
        FUNC6(&argv);
    }

    FUNC7(&gc);
}