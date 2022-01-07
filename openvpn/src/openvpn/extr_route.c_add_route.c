
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {int dummy; } ;
struct route_ipv4 {int flags; int metric; int netmask; int gateway; int network; } ;
struct route_gateway_info {char* iface; int adapter_index; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct argv {int dummy; } ;
typedef int out ;
typedef int openvpn_net_ctx_t ;
typedef int DWORD ;


 int ASSERT (int ) ;
 int D_ROUTE ;
 int LR_ERROR ;
 int M_FATAL ;
 int M_WARN ;
 unsigned int ROUTE_METHOD_ADAPTIVE ;
 unsigned int ROUTE_METHOD_EXE ;
 unsigned int ROUTE_METHOD_IPAPI ;
 unsigned int ROUTE_METHOD_MASK ;
 unsigned int ROUTE_METHOD_SERVICE ;
 int ROUTE_PATH ;
 int RT_ADDED ;
 int RT_DEFINED ;
 int RT_METRIC_DEFINED ;
 int TUN_ADAPTER_INDEX_INVALID ;
 int WIN_ROUTE_PATH_SUFFIX ;
 int add_route_ipapi (struct route_ipv4*,struct tuntap const*,int ) ;
 int add_route_service (struct route_ipv4*,struct tuntap const*) ;
 int argv_msg (int ,struct argv*) ;
 struct argv argv_new () ;
 int argv_printf (struct argv*,char*,int ,...) ;
 int argv_printf_cat (struct argv*,char*,...) ;
 int argv_reset (struct argv*) ;
 int gc_free (struct gc_arena*) ;
 int gc_init (struct gc_arena*) ;
 int get_win_sys_path () ;
 scalar_t__ is_on_link (int,unsigned int,struct route_gateway_info const*) ;
 int local_route (int ,int ,int ,struct route_gateway_info const*) ;
 int management ;
 int management_android_control (int ,char*,char*) ;
 int msg (int ,char*,...) ;
 int net_ctx_reset (int *) ;
 scalar_t__ net_route_v4_add (int *,int *,int,int *,char const*,int ,int) ;
 int netcmd_semaphore_lock () ;
 int netcmd_semaphore_release () ;
 int netmask_to_netbits2 (int ) ;
 int openvpn_execve_check (struct argv*,struct env_set const*,int ,char*) ;
 int openvpn_snprintf (char*,int,char*,char const*,char const*,char const*,...) ;
 char* print_in_addr_t (int ,int ,struct gc_arena*) ;

void
add_route(struct route_ipv4 *r,
          const struct tuntap *tt,
          unsigned int flags,
          const struct route_gateway_info *rgi,
          const struct env_set *es,
          openvpn_net_ctx_t *ctx)
{
    struct gc_arena gc;
    struct argv argv = argv_new();

    const char *network;

    const char *netmask;

    const char *gateway;

    bool status = 0;
    int is_local_route;

    if (!(r->flags & RT_DEFINED))
    {
        return;
    }

    gc_init(&gc);


    network = print_in_addr_t(r->network, 0, &gc);

    netmask = print_in_addr_t(r->netmask, 0, &gc);

    gateway = print_in_addr_t(r->gateway, 0, &gc);


    is_local_route = local_route(r->network, r->netmask, r->gateway, rgi);
    if (is_local_route == LR_ERROR)
    {
        goto done;
    }
    msg(M_FATAL, "Sorry, but I don't know how to do 'route' commands on this operating system.  Try putting your routes in a --route-up script");


done:
    if (status)
    {
        r->flags |= RT_ADDED;
    }
    else
    {
        r->flags &= ~RT_ADDED;
    }
    argv_reset(&argv);
    gc_free(&gc);

    net_ctx_reset(ctx);
}
