
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link_socket_info {int connection_established; scalar_t__ ipchange_command; int plugins; TYPE_1__* lsa; } ;
struct link_socket_actual {int dummy; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct buffer {int dummy; } ;
struct argv {int dummy; } ;
struct TYPE_2__ {struct link_socket_actual actual; } ;


 int BSTR (struct buffer*) ;
 int M_INFO ;
 int M_WARN ;
 scalar_t__ OPENVPN_PLUGIN_FUNC_SUCCESS ;
 int OPENVPN_PLUGIN_IPCHANGE ;
 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 struct argv argv_new () ;
 int argv_reset (struct argv*) ;
 int buf_printf (struct buffer*,char*,char const*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int ipchange_fmt (int,struct argv*,struct link_socket_info*,struct gc_arena*) ;
 int msg (int ,char*,...) ;
 int openvpn_run_script (struct argv*,struct env_set*,int ,char*) ;
 scalar_t__ plugin_call (int ,int ,struct argv*,int *,struct env_set*) ;
 scalar_t__ plugin_defined (int ,int ) ;
 char const* print_link_socket_actual (struct link_socket_actual*,struct gc_arena*) ;
 int setenv_str (struct env_set*,char*,char const*) ;
 int setenv_trusted (struct env_set*,struct link_socket_info*) ;

void
link_socket_connection_initiated(const struct buffer *buf,
                                 struct link_socket_info *info,
                                 const struct link_socket_actual *act,
                                 const char *common_name,
                                 struct env_set *es)
{
    struct gc_arena gc = gc_new();

    info->lsa->actual = *act;
    setenv_trusted(es, info);
    info->connection_established = 1;


    {
        struct buffer out = alloc_buf_gc(256, &gc);
        if (common_name)
        {
            buf_printf(&out, "[%s] ", common_name);
        }
        buf_printf(&out, "Peer Connection Initiated with %s", print_link_socket_actual(&info->lsa->actual, &gc));
        msg(M_INFO, "%s", BSTR(&out));
    }


    setenv_str(es, "common_name", common_name);


    if (plugin_defined(info->plugins, OPENVPN_PLUGIN_IPCHANGE))
    {
        struct argv argv = argv_new();
        ipchange_fmt(0, &argv, info, &gc);
        if (plugin_call(info->plugins, OPENVPN_PLUGIN_IPCHANGE, &argv, ((void*)0), es) != OPENVPN_PLUGIN_FUNC_SUCCESS)
        {
            msg(M_WARN, "WARNING: ipchange plugin call failed");
        }
        argv_reset(&argv);
    }


    if (info->ipchange_command)
    {
        struct argv argv = argv_new();
        setenv_str(es, "script_type", "ipchange");
        ipchange_fmt(1, &argv, info, &gc);
        openvpn_run_script(&argv, es, 0, "--ipchange");
        argv_reset(&argv);
    }

    gc_free(&gc);
}
