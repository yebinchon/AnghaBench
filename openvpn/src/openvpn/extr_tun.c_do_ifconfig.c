
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap {scalar_t__ did_ifconfig_ipv6_setup; scalar_t__ did_ifconfig_setup; int local_ipv6; int local; } ;
struct env_set {int dummy; } ;
typedef int openvpn_net_ctx_t ;


 int D_LOW ;
 int OPENVPN_STATE_ASSIGN_IP ;
 int do_ifconfig_ipv4 (struct tuntap*,char const*,int,struct env_set const*,int *) ;
 int do_ifconfig_ipv6 (struct tuntap*,char const*,int,struct env_set const*,int *) ;
 scalar_t__ management ;
 int management_set_state (scalar_t__,int ,int *,int *,int *,int *,int *) ;
 int msg (int ,char*,scalar_t__,scalar_t__) ;
 int net_ctx_free (int *) ;

void
do_ifconfig(struct tuntap *tt, const char *ifname, int tun_mtu,
            const struct env_set *es, openvpn_net_ctx_t *ctx)
{
    msg(D_LOW, "do_ifconfig, ipv4=%d, ipv6=%d", tt->did_ifconfig_setup,
        tt->did_ifconfig_ipv6_setup);
    if (tt->did_ifconfig_setup)
    {
        do_ifconfig_ipv4(tt, ifname, tun_mtu, es, ctx);
    }

    if (tt->did_ifconfig_ipv6_setup)
    {
        do_ifconfig_ipv6(tt, ifname, tun_mtu, es, ctx);
    }


    net_ctx_free(ctx);
}
