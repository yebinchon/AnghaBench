
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ip_win32_type; int dns6_len; int dns6; scalar_t__ msg_channel; } ;
struct tuntap {char const* netbits_ipv6; scalar_t__ type; TYPE_1__ options; int adapter_index; int remote_ipv6; int local_ipv6; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct argv {int dummy; } ;
typedef int out6 ;
typedef int openvpn_net_ctx_t ;
typedef int iface ;


 int AF_INET6 ;
 scalar_t__ DEV_TYPE_TUN ;
 int IFCONFIG_PATH ;
 scalar_t__ IPW32_SET_MANUAL ;
 int M_FATAL ;
 int M_INFO ;
 char const* NETSH_PATH_SUFFIX ;
 int S_FATAL ;
 int add_route_connected_v6_net (struct tuntap*,struct env_set const*) ;
 int argv_msg (int ,struct argv*) ;
 struct argv argv_new () ;
 int argv_printf (struct argv*,char*,int ,char const*,...) ;
 int argv_reset (struct argv*) ;
 int do_address_service (int,int ,struct tuntap*) ;
 int do_dns6_service (int,struct tuntap*) ;
 int env_set_add (struct env_set const*,char*) ;
 struct env_set* env_set_create (int *) ;
 int env_set_destroy (struct env_set const*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int get_win_sys_path () ;
 int management ;
 int management_android_control (int ,char*,char*) ;
 int msg (int ,char*,...) ;
 scalar_t__ net_addr_v6_add (int *,char const*,int *,char const*) ;
 scalar_t__ net_iface_mtu_set (int *,char const*,int) ;
 scalar_t__ net_iface_up (int *,char const*,int) ;
 int netsh_command (struct argv*,int,int ) ;
 int netsh_set_dns6_servers (int ,int ,char const*) ;
 int openvpn_execve_check (struct argv*,struct env_set const*,int ,char*) ;
 int openvpn_snprintf (char*,int,char*,char const*,...) ;
 char* print_in6_addr (int ,int ,struct gc_arena*) ;
 int solaris_error_close (struct tuntap*,struct env_set const*,char const*,int) ;

__attribute__((used)) static void
do_ifconfig_ipv6(struct tuntap *tt, const char *ifname, int tun_mtu,
                 const struct env_set *es, openvpn_net_ctx_t *ctx)
{

    struct argv argv = argv_new();
    struct gc_arena gc = gc_new();
    const char *ifconfig_ipv6_local = print_in6_addr(tt->local_ipv6, 0, &gc);
    msg(M_FATAL, "Sorry, but I don't know how to do IPv6 'ifconfig' commands on this operating system.  You should ifconfig your TUN/TAP device manually or use an --up script.");



    gc_free(&gc);
    argv_reset(&argv);

}
