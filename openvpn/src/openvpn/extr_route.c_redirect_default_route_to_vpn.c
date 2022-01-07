
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tuntap {int dummy; } ;
struct TYPE_6__ {int addr; } ;
struct TYPE_8__ {int flags; TYPE_1__ gateway; } ;
struct TYPE_7__ {int flags; scalar_t__ remote_host; int remote_host_local; int remote_endpoint; int bypass; } ;
struct route_list {int flags; int iflags; TYPE_3__ rgi; TYPE_2__ spec; } ;
struct env_set {int dummy; } ;
typedef int openvpn_net_ctx_t ;


 int D_ROUTE ;
 scalar_t__ IPV4_INVALID_ADDR ;
 int IPV4_NETMASK_HOST ;
 int M_WARN ;
 int RGI_ADDR_DEFINED ;
 int RG_AUTO_LOCAL ;
 int RG_DEF1 ;
 int RG_ENABLE ;
 int RG_LOCAL ;
 int RG_REROUTE_GW ;
 int RL_DID_LOCAL ;
 int RL_DID_REDIRECT_DEFAULT_GATEWAY ;
 unsigned int ROUTE_REF_GW ;
 int RTSA_REMOTE_ENDPOINT ;
 int RTSA_REMOTE_HOST ;
 int const TLA_LOCAL ;
 int const TLA_NONLOCAL ;
 int add_bypass_routes (int *,int ,struct tuntap const*,unsigned int,TYPE_3__*,struct env_set const*,int *) ;
 int add_route3 (int,int,int ,struct tuntap const*,unsigned int,TYPE_3__*,struct env_set const*,int *) ;
 int del_route3 (int ,int ,int ,struct tuntap const*,unsigned int,TYPE_3__*,struct env_set const*,int *) ;
 int dmsg (int ,char*) ;
 int msg (int ,char*,char const*) ;

__attribute__((used)) static void
redirect_default_route_to_vpn(struct route_list *rl, const struct tuntap *tt,
                              unsigned int flags, const struct env_set *es,
                              openvpn_net_ctx_t *ctx)
{
    const char err[] = "NOTE: unable to redirect default gateway --";

    if (rl && rl->flags & RG_ENABLE)
    {
        bool local = rl->flags & RG_LOCAL;

        if (!(rl->spec.flags & RTSA_REMOTE_ENDPOINT) && (rl->flags & RG_REROUTE_GW))
        {
            msg(M_WARN, "%s VPN gateway parameter (--route-gateway or --ifconfig) is missing", err);
        }





        else if (!(rl->rgi.flags & RGI_ADDR_DEFINED) && !local
                 && (rl->spec.remote_host != IPV4_INVALID_ADDR))
        {
            msg(M_WARN, "%s Cannot read current default gateway from system", err);
        }
        else if (!(rl->spec.flags & RTSA_REMOTE_HOST))
        {
            msg(M_WARN, "%s Cannot obtain current remote host address", err);
        }
        else
        {

            if (rl->flags & RG_AUTO_LOCAL)
            {
                const int tla = rl->spec.remote_host_local;
                if (tla == TLA_NONLOCAL)
                {
                    dmsg(D_ROUTE, "ROUTE remote_host is NOT LOCAL");
                    local = 0;
                }
                else if (tla == TLA_LOCAL)
                {
                    dmsg(D_ROUTE, "ROUTE remote_host is LOCAL");
                    local = 1;
                }
            }
            if (!local)
            {



                if (rl->spec.remote_host != IPV4_INVALID_ADDR)
                {
                    add_route3(rl->spec.remote_host,
                               IPV4_NETMASK_HOST,
                               rl->rgi.gateway.addr,
                               tt,
                               flags | ROUTE_REF_GW,
                               &rl->rgi,
                               es,
                               ctx);
                    rl->iflags |= RL_DID_LOCAL;
                }
                else
                {
                    dmsg(D_ROUTE, "ROUTE remote_host protocol differs from tunneled");
                }
            }



            add_bypass_routes(&rl->spec.bypass, rl->rgi.gateway.addr, tt, flags,
                              &rl->rgi, es, ctx);

            if (rl->flags & RG_REROUTE_GW)
            {
                if (rl->flags & RG_DEF1)
                {

                    add_route3(0x00000000,
                               0x80000000,
                               rl->spec.remote_endpoint,
                               tt,
                               flags,
                               &rl->rgi,
                               es,
                               ctx);


                    add_route3(0x80000000,
                               0x80000000,
                               rl->spec.remote_endpoint,
                               tt,
                               flags,
                               &rl->rgi,
                               es,
                               ctx);
                }
                else
                {

                    if (rl->rgi.flags & RGI_ADDR_DEFINED)
                    {

                        del_route3(0, 0, rl->rgi.gateway.addr, tt,
                                   flags | ROUTE_REF_GW, &rl->rgi, es, ctx);
                    }


                    add_route3(0,
                               0,
                               rl->spec.remote_endpoint,
                               tt,
                               flags,
                               &rl->rgi,
                               es,
                               ctx);
                }
            }


            rl->iflags |= RL_DID_REDIRECT_DEFAULT_GATEWAY;
        }
    }
}
