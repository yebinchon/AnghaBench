#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct openvpn_udphdr {int dummy; } ;
struct openvpn_iphdr {int dummy; } ;
struct gc_arena {int dummy; } ;
struct TYPE_6__ {scalar_t__ protocol; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_5__ {scalar_t__ source; scalar_t__ dest; scalar_t__ check; } ;
struct TYPE_7__ {scalar_t__ op; } ;
struct dhcp_full {TYPE_2__ ip; TYPE_1__ udp; TYPE_3__ dhcp; } ;
struct dhcp {int dummy; } ;
struct buffer {int dummy; } ;
typedef  scalar_t__ const in_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  BOOTPC_PORT ; 
 int /*<<< orphan*/  BOOTPS_PORT ; 
 scalar_t__ BOOTREPLY ; 
 scalar_t__ FUNC1 (struct buffer*) ; 
 int const DHCPACK ; 
 int const DHCPOFFER ; 
 int /*<<< orphan*/  D_ROUTE ; 
 scalar_t__ OPENVPN_IPPROTO_UDP ; 
 scalar_t__ const FUNC2 (TYPE_3__*,int const) ; 
 int /*<<< orphan*/  FUNC3 (struct gc_arena*) ; 
 struct gc_arena FUNC4 () ; 
 int FUNC5 (TYPE_3__*,int const) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__ const,int /*<<< orphan*/ ,struct gc_arena*) ; 

in_addr_t
FUNC10(struct buffer *ipbuf)
{
    struct dhcp_full *df = (struct dhcp_full *) FUNC1(ipbuf);
    const int optlen = FUNC0(ipbuf) - (sizeof(struct openvpn_iphdr) + sizeof(struct openvpn_udphdr) + sizeof(struct dhcp));

    if (optlen >= 0
        && df->ip.protocol == OPENVPN_IPPROTO_UDP
        && df->udp.source == FUNC6(BOOTPS_PORT)
        && df->udp.dest == FUNC6(BOOTPC_PORT)
        && df->dhcp.op == BOOTREPLY)
    {
        const int message_type = FUNC5(&df->dhcp, optlen);
        if (message_type == DHCPACK || message_type == DHCPOFFER)
        {
            /* get the router IP address while padding out all DHCP router options */
            const in_addr_t ret = FUNC2(&df->dhcp, optlen);

            /* recompute the UDP checksum */
            df->udp.check = 0;
            df->udp.check = FUNC6(FUNC7(AF_INET, (uint8_t *)&df->udp,
                                              sizeof(struct openvpn_udphdr) + sizeof(struct dhcp) + optlen,
                                              (uint8_t *)&df->ip.saddr, (uint8_t *)&df->ip.daddr,
                                              OPENVPN_IPPROTO_UDP));

            /* only return the extracted Router address if DHCPACK */
            if (message_type == DHCPACK)
            {
                if (ret)
                {
                    struct gc_arena gc = FUNC4();
                    FUNC8(D_ROUTE, "Extracted DHCP router address: %s", FUNC9(ret, 0, &gc));
                    FUNC3(&gc);
                }

                return ret;
            }
        }
    }
    return 0;
}