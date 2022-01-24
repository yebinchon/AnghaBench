#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tuntap {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {int flags; TYPE_1__ gateway; } ;
struct TYPE_7__ {int flags; scalar_t__ remote_host; int remote_host_local; int /*<<< orphan*/  remote_endpoint; int /*<<< orphan*/  bypass; } ;
struct route_list {int flags; int /*<<< orphan*/  iflags; TYPE_3__ rgi; TYPE_2__ spec; } ;
struct env_set {int dummy; } ;
typedef  int /*<<< orphan*/  openvpn_net_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  D_ROUTE ; 
 scalar_t__ IPV4_INVALID_ADDR ; 
 int IPV4_NETMASK_HOST ; 
 int /*<<< orphan*/  M_WARN ; 
 int RGI_ADDR_DEFINED ; 
 int RG_AUTO_LOCAL ; 
 int RG_DEF1 ; 
 int RG_ENABLE ; 
 int RG_LOCAL ; 
 int RG_REROUTE_GW ; 
 int /*<<< orphan*/  RL_DID_LOCAL ; 
 int /*<<< orphan*/  RL_DID_REDIRECT_DEFAULT_GATEWAY ; 
 unsigned int ROUTE_REF_GW ; 
 int RTSA_REMOTE_ENDPOINT ; 
 int RTSA_REMOTE_HOST ; 
 int const TLA_LOCAL ; 
 int const TLA_NONLOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct tuntap const*,unsigned int,TYPE_3__*,struct env_set const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,struct tuntap const*,unsigned int,TYPE_3__*,struct env_set const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tuntap const*,unsigned int,TYPE_3__*,struct env_set const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static void
FUNC5(struct route_list *rl, const struct tuntap *tt,
                              unsigned int flags, const struct env_set *es,
                              openvpn_net_ctx_t *ctx)
{
    const char err[] = "NOTE: unable to redirect default gateway --";

    if (rl && rl->flags & RG_ENABLE)
    {
        bool local = rl->flags & RG_LOCAL;

        if (!(rl->spec.flags & RTSA_REMOTE_ENDPOINT) && (rl->flags & RG_REROUTE_GW))
        {
            FUNC4(M_WARN, "%s VPN gateway parameter (--route-gateway or --ifconfig) is missing", err);
        }
        /*
         * check if a default route is defined, unless:
         * - we are connecting to a remote host in our network
         * - we are connecting to a non-IPv4 remote host (i.e. we use IPv6)
         */
        else if (!(rl->rgi.flags & RGI_ADDR_DEFINED) && !local
                 && (rl->spec.remote_host != IPV4_INVALID_ADDR))
        {
            FUNC4(M_WARN, "%s Cannot read current default gateway from system", err);
        }
        else if (!(rl->spec.flags & RTSA_REMOTE_HOST))
        {
            FUNC4(M_WARN, "%s Cannot obtain current remote host address", err);
        }
        else
        {
#ifndef TARGET_ANDROID
            if (rl->flags & RG_AUTO_LOCAL)
            {
                const int tla = rl->spec.remote_host_local;
                if (tla == TLA_NONLOCAL)
                {
                    FUNC3(D_ROUTE, "ROUTE remote_host is NOT LOCAL");
                    local = false;
                }
                else if (tla == TLA_LOCAL)
                {
                    FUNC3(D_ROUTE, "ROUTE remote_host is LOCAL");
                    local = true;
                }
            }
            if (!local)
            {
                /* route remote host to original default gateway */
                /* if remote_host is not ipv4 (ie: ipv6), just skip
                 * adding this special /32 route */
                if (rl->spec.remote_host != IPV4_INVALID_ADDR)
                {
                    FUNC1(rl->spec.remote_host,
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
                    FUNC3(D_ROUTE, "ROUTE remote_host protocol differs from tunneled");
                }
            }
#endif /* ifndef TARGET_ANDROID */

            /* route DHCP/DNS server traffic through original default gateway */
            FUNC0(&rl->spec.bypass, rl->rgi.gateway.addr, tt, flags,
                              &rl->rgi, es, ctx);

            if (rl->flags & RG_REROUTE_GW)
            {
                if (rl->flags & RG_DEF1)
                {
                    /* add new default route (1st component) */
                    FUNC1(0x00000000,
                               0x80000000,
                               rl->spec.remote_endpoint,
                               tt,
                               flags,
                               &rl->rgi,
                               es,
                               ctx);

                    /* add new default route (2nd component) */
                    FUNC1(0x80000000,
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
                    /* don't try to remove the def route if it does not exist */
                    if (rl->rgi.flags & RGI_ADDR_DEFINED)
                    {
                        /* delete default route */
                        FUNC2(0, 0, rl->rgi.gateway.addr, tt,
                                   flags | ROUTE_REF_GW, &rl->rgi, es, ctx);
                    }

                    /* add new default route */
                    FUNC1(0,
                               0,
                               rl->spec.remote_endpoint,
                               tt,
                               flags,
                               &rl->rgi,
                               es,
                               ctx);
                }
            }

            /* set a flag so we can undo later */
            rl->iflags |= RL_DID_REDIRECT_DEFAULT_GATEWAY;
        }
    }
}