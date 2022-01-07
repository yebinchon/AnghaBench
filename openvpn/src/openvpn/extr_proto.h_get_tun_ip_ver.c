
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct openvpn_iphdr {int dummy; } ;
struct openvpn_ethhdr {int proto; } ;
struct buffer {int dummy; } ;


 int BLEN (struct buffer*) ;
 int * BPTR (struct buffer*) ;
 int DEV_TYPE_TAP ;
 int DEV_TYPE_TUN ;
 scalar_t__ OPENVPN_ETH_P_IPV4 ;
 scalar_t__ OPENVPN_ETH_P_IPV6 ;
 int OPENVPN_IPH_GET_VER (int ) ;
 scalar_t__ likely (int) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) inline static int
get_tun_ip_ver(int tunnel_type, struct buffer *buf, int *ip_hdr_offset)
{
    int ip_ver = -1;


    if (tunnel_type == DEV_TYPE_TUN)
    {
        *ip_hdr_offset = 0;
        if (likely(BLEN(buf) >= (int) sizeof(struct openvpn_iphdr)))
        {
            ip_ver = OPENVPN_IPH_GET_VER(*BPTR(buf));
        }
    }
    else if (tunnel_type == DEV_TYPE_TAP)
    {
        *ip_hdr_offset = (int)(sizeof(struct openvpn_ethhdr));

        if (likely(BLEN(buf) >= *ip_hdr_offset))
        {
            const struct openvpn_ethhdr *eh = (const struct openvpn_ethhdr *) BPTR(buf);
            uint16_t proto = ntohs(eh->proto);
            if (proto == OPENVPN_ETH_P_IPV6)
            {
                ip_ver = 6;
            }
            else if (proto == OPENVPN_ETH_P_IPV4)
            {
                ip_ver = 4;
            }
        }
    }

    return ip_ver;
}
