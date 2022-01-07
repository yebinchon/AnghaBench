
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plugin_list {int dummy; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct argv {int dummy; } ;
typedef int DWORD ;


 int ASSERT (char const*) ;
 int M_FATAL ;
 int M_INFO ;
 scalar_t__ OPENVPN_PLUGIN_FUNC_SUCCESS ;
 int S_FATAL ;
 int argv_msg (int ,struct argv*) ;
 struct argv argv_new () ;
 int argv_parse_cmd (struct argv*,char const*) ;
 int argv_printf (struct argv*,char*,char const*,int,int,char const*,char const*,char const*) ;
 int argv_printf_cat (struct argv*,char*,char const*,int,int,char const*,char const*,char const*) ;
 int argv_reset (struct argv*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int ,char*) ;
 int openvpn_run_script (struct argv*,struct env_set*,int ,char*) ;
 scalar_t__ plugin_call (struct plugin_list const*,int,struct argv*,int *,struct env_set*) ;
 scalar_t__ plugin_defined (struct plugin_list const*,int) ;
 int setenv_int (struct env_set*,char*,int) ;
 int setenv_str (struct env_set*,char*,char const*) ;

__attribute__((used)) static void
run_up_down(const char *command,
            const struct plugin_list *plugins,
            int plugin_type,
            const char *arg,



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
    struct gc_arena gc = gc_new();

    if (signal_text)
    {
        setenv_str(es, "signal", signal_text);
    }
    setenv_str(es, "script_context", context);
    setenv_int(es, "tun_mtu", tun_mtu);
    setenv_int(es, "link_mtu", link_mtu);
    setenv_str(es, "dev", arg);
    if (dev_type)
    {
        setenv_str(es, "dev_type", dev_type);
    }




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

    if (plugin_defined(plugins, plugin_type))
    {
        struct argv argv = argv_new();
        ASSERT(arg);
        argv_printf(&argv,
                    "%s %d %d %s %s %s",
                    arg,
                    tun_mtu, link_mtu,
                    ifconfig_local, ifconfig_remote,
                    context);

        if (plugin_call(plugins, plugin_type, &argv, ((void*)0), es) != OPENVPN_PLUGIN_FUNC_SUCCESS)
        {
            msg(M_FATAL, "ERROR: up/down plugin call failed");
        }

        argv_reset(&argv);
    }

    if (command)
    {
        struct argv argv = argv_new();
        ASSERT(arg);
        setenv_str(es, "script_type", script_type);
        argv_parse_cmd(&argv, command);
        argv_printf_cat(&argv, "%s %d %d %s %s %s", arg, tun_mtu, link_mtu,
                        ifconfig_local, ifconfig_remote, context);
        argv_msg(M_INFO, &argv);
        openvpn_run_script(&argv, es, S_FATAL, "--up/--down");
        argv_reset(&argv);
    }

    gc_free(&gc);
}
