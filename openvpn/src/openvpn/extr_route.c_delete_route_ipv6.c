
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ msg_channel; } ;
struct tuntap {char* actual_name; scalar_t__ type; int adapter_index; TYPE_1__ options; } ;
struct route_ipv6 {int flags; char* iface; int metric; int netbits; int gateway; int adapter_index; int network; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct buffer {int dummy; } ;
struct argv {int dummy; } ;
typedef int openvpn_net_ctx_t ;
struct TYPE_4__ {char const* metric; } ;


 scalar_t__ DEV_TYPE_TAP ;
 scalar_t__ DEV_TYPE_TUN ;
 int D_ROUTE ;
 scalar_t__ IN6_IS_ADDR_LINKLOCAL (int *) ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int M_FATAL ;
 int M_INFO ;
 int M_WARN ;
 int NETSH_PATH_SUFFIX ;
 int ROUTE_PATH ;
 int RT_ADDED ;
 int RT_DEFINED ;
 int RT_METRIC_DEFINED ;
 struct buffer alloc_buf_gc (int,struct gc_arena*) ;
 int argv_msg (int ,struct argv*) ;
 struct argv argv_new () ;
 int argv_printf (struct argv*,char*,int ,char const*,char const*,...) ;
 int argv_printf_cat (struct argv*,char*,...) ;
 int argv_reset (struct argv*) ;
 char* buf_bptr (struct buffer*) ;
 int buf_printf (struct buffer*,char*,int ) ;
 int del_route_ipv6_service (struct route_ipv6 const*,struct tuntap const*) ;
 int gc_free (struct gc_arena*) ;
 int gc_init (struct gc_arena*) ;
 char* gc_malloc (int,int,struct gc_arena*) ;
 int get_win_sys_path () ;
 int msg (int ,char*,...) ;
 int net_ctx_reset (int *) ;
 scalar_t__ net_route_v6_del (int *,int *,int ,int *,char const*,int ,int) ;
 int netcmd_semaphore_lock () ;
 int netcmd_semaphore_release () ;
 int openvpn_execve_check (struct argv*,struct env_set const*,int ,char*) ;
 char* print_in6_addr (int ,int ,struct gc_arena*) ;
 TYPE_2__* r ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int strlen (char const*) ;

void
delete_route_ipv6(const struct route_ipv6 *r6, const struct tuntap *tt,
                  unsigned int flags, const struct env_set *es,
                  openvpn_net_ctx_t *ctx)
{
    struct gc_arena gc;
    struct argv argv = argv_new();
    const char *network;

    const char *gateway;



    const char *device = tt->actual_name;
    bool gateway_needed = 0;

    if ((r6->flags & (RT_DEFINED|RT_ADDED)) != (RT_DEFINED|RT_ADDED))
    {
        return;
    }


    if (r6->iface != ((void*)0))
    {
        device = r6->iface;
        gateway_needed = 1;
    }


    gc_init(&gc);

    network = print_in6_addr( r6->network, 0, &gc);

    gateway = print_in6_addr( r6->gateway, 0, &gc);
    msg( M_INFO, "delete_route_ipv6(%s/%d)", network, r6->netbits );




    if (tt->type == DEV_TYPE_TAP
        && !( (r6->flags & RT_METRIC_DEFINED) && r6->metric == 0 ) )
    {
        gateway_needed = 1;
    }
    msg(M_FATAL, "Sorry, but I don't know how to do 'route ipv6' commands on this operating system.  Try putting your routes in a --route-down script");


    argv_reset(&argv);
    gc_free(&gc);

    net_ctx_reset(ctx);
}
