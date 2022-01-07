
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct openvpn_udphdr {int dummy; } ;
struct openvpn_iphdr {int dummy; } ;
struct gc_arena {int dummy; } ;
struct TYPE_6__ {scalar_t__ protocol; int daddr; int saddr; } ;
struct TYPE_5__ {scalar_t__ source; scalar_t__ dest; scalar_t__ check; } ;
struct TYPE_7__ {scalar_t__ op; } ;
struct dhcp_full {TYPE_2__ ip; TYPE_1__ udp; TYPE_3__ dhcp; } ;
struct dhcp {int dummy; } ;
struct buffer {int dummy; } ;
typedef scalar_t__ const in_addr_t ;


 int AF_INET ;
 int BLEN (struct buffer*) ;
 int BOOTPC_PORT ;
 int BOOTPS_PORT ;
 scalar_t__ BOOTREPLY ;
 scalar_t__ BPTR (struct buffer*) ;
 int const DHCPACK ;
 int const DHCPOFFER ;
 int D_ROUTE ;
 scalar_t__ OPENVPN_IPPROTO_UDP ;
 scalar_t__ const do_extract (TYPE_3__*,int const) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int get_dhcp_message_type (TYPE_3__*,int const) ;
 scalar_t__ htons (int ) ;
 int ip_checksum (int ,int *,int,int *,int *,scalar_t__) ;
 int msg (int ,char*,int ) ;
 int print_in_addr_t (scalar_t__ const,int ,struct gc_arena*) ;

in_addr_t
dhcp_extract_router_msg(struct buffer *ipbuf)
{
    struct dhcp_full *df = (struct dhcp_full *) BPTR(ipbuf);
    const int optlen = BLEN(ipbuf) - (sizeof(struct openvpn_iphdr) + sizeof(struct openvpn_udphdr) + sizeof(struct dhcp));

    if (optlen >= 0
        && df->ip.protocol == OPENVPN_IPPROTO_UDP
        && df->udp.source == htons(BOOTPS_PORT)
        && df->udp.dest == htons(BOOTPC_PORT)
        && df->dhcp.op == BOOTREPLY)
    {
        const int message_type = get_dhcp_message_type(&df->dhcp, optlen);
        if (message_type == DHCPACK || message_type == DHCPOFFER)
        {

            const in_addr_t ret = do_extract(&df->dhcp, optlen);


            df->udp.check = 0;
            df->udp.check = htons(ip_checksum(AF_INET, (uint8_t *)&df->udp,
                                              sizeof(struct openvpn_udphdr) + sizeof(struct dhcp) + optlen,
                                              (uint8_t *)&df->ip.saddr, (uint8_t *)&df->ip.daddr,
                                              OPENVPN_IPPROTO_UDP));


            if (message_type == DHCPACK)
            {
                if (ret)
                {
                    struct gc_arena gc = gc_new();
                    msg(D_ROUTE, "Extracted DHCP router address: %s", print_in_addr_t(ret, 0, &gc));
                    gc_free(&gc);
                }

                return ret;
            }
        }
    }
    return 0;
}
