
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ip_win32_type; } ;
struct tuntap {void* local; void* remote_netmask; int topology; void* adapter_netmask; TYPE_1__ options; } ;
struct route_ipv4 {int network; int netmask; int gateway; void* flags; scalar_t__ metric; } ;
struct gc_arena {int dummy; } ;
typedef struct env_set const env_set ;
struct argv {int dummy; } ;
typedef int out ;
typedef int openvpn_net_ctx_t ;
typedef void* in_addr_t ;


 int ASSERT (int ) ;
 int CLEAR (struct route_ipv4) ;
 int IFCONFIG_PATH ;


 int M_FATAL ;
 int M_INFO ;
 int NI_IP_NETMASK ;
 int NI_OPTIONS ;
 void* RT_DEFINED ;
 void* RT_METRIC_DEFINED ;
 int S_FATAL ;



 int add_route (struct route_ipv4*,struct tuntap*,int ,int *,struct env_set const*,int *) ;
 int argv_msg (int ,struct argv*) ;
 struct argv argv_new () ;
 int argv_printf (struct argv*,char*,int ,char const*,...) ;
 int argv_reset (struct argv*) ;
 void* create_arbitrary_remote (struct tuntap*) ;
 int env_set_add (struct env_set const*,char*) ;
 struct env_set const* env_set_create (int *) ;
 int env_set_destroy (struct env_set const*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int is_tun_p2p (struct tuntap*) ;
 int management ;
 int management_android_control (int ,char*,char*) ;
 int msg (int ,char*,...) ;
 scalar_t__ net_addr_ptp_v4_add (int *,char const*,void**,void**) ;
 scalar_t__ net_addr_v4_add (int *,char const*,void**,int ) ;
 scalar_t__ net_iface_mtu_set (int *,char const*,int) ;
 scalar_t__ net_iface_up (int *,char const*,int) ;
 int netmask_to_netbits2 (void*) ;
 int netsh_ifconfig (TYPE_1__*,char const*,int,void*,int) ;
 int openvpn_execve_check (struct argv*,struct env_set const*,int ,char*) ;
 int openvpn_snprintf (char*,int,char*,char const*,char const*,int,char*) ;
 char* print_in_addr_t (void*,int ,struct gc_arena*) ;
 int solaris_error_close (struct tuntap*,struct env_set const*,char const*,int) ;

__attribute__((used)) static void
do_ifconfig_ipv4(struct tuntap *tt, const char *ifname, int tun_mtu,
                 const struct env_set *es, openvpn_net_ctx_t *ctx)
{



    bool tun = is_tun_p2p(tt);


    const char *ifconfig_local = ((void*)0);
    const char *ifconfig_remote_netmask = ((void*)0);
    struct argv argv = argv_new();
    struct gc_arena gc = gc_new();




    ifconfig_local = print_in_addr_t(tt->local, 0, &gc);
    ifconfig_remote_netmask = print_in_addr_t(tt->remote_netmask, 0, &gc);
    msg(M_FATAL, "Sorry, but I don't know how to do 'ifconfig' commands on this operating system.  You should ifconfig your TUN/TAP device manually or use an --up script.");



    gc_free(&gc);
    argv_reset(&argv);

}
