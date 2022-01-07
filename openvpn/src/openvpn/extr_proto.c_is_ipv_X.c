
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct openvpn_iphdr {int version_len; } ;
struct openvpn_ethhdr {int proto; } ;
struct openvpn_8021qhdr {int proto; } ;
struct buffer {int dummy; } ;


 int BLEN (struct buffer*) ;
 scalar_t__ BPTR (struct buffer*) ;
 int DEV_TYPE_TAP ;
 int DEV_TYPE_TUN ;
 int OPENVPN_ETH_P_8021Q ;
 scalar_t__ OPENVPN_ETH_P_IPV4 ;
 scalar_t__ OPENVPN_ETH_P_IPV6 ;
 int OPENVPN_IPH_GET_VER (int ) ;
 int buf_advance (struct buffer*,int) ;
 int htons (int ) ;
 scalar_t__ ntohs (int ) ;
 int verify_align_4 (struct buffer*) ;

__attribute__((used)) static bool
is_ipv_X(int tunnel_type, struct buffer *buf, int ip_ver)
{
    int offset;
    uint16_t proto;
    const struct openvpn_iphdr *ih;

    verify_align_4(buf);
    if (tunnel_type == DEV_TYPE_TUN)
    {
        if (BLEN(buf) < sizeof(struct openvpn_iphdr))
        {
            return 0;
        }
        offset = 0;
    }
    else if (tunnel_type == DEV_TYPE_TAP)
    {
        const struct openvpn_ethhdr *eh;
        if (BLEN(buf) < (sizeof(struct openvpn_ethhdr)
                         + sizeof(struct openvpn_iphdr)))
        {
            return 0;
        }
        eh = (const struct openvpn_ethhdr *)BPTR(buf);


        proto = eh->proto;
        offset = sizeof(struct openvpn_ethhdr);




        if (proto == htons(OPENVPN_ETH_P_8021Q))
        {
            const struct openvpn_8021qhdr *evh;
            if (BLEN(buf) < (sizeof(struct openvpn_ethhdr)
                             + sizeof(struct openvpn_iphdr)))
            {
                return 0;
            }

            evh = (const struct openvpn_8021qhdr *)BPTR(buf);

            proto = evh->proto;
            offset = sizeof(struct openvpn_8021qhdr);
        }

        if (ntohs(proto) != (ip_ver == 6 ? OPENVPN_ETH_P_IPV6 : OPENVPN_ETH_P_IPV4))
        {
            return 0;
        }
    }
    else
    {
        return 0;
    }

    ih = (const struct openvpn_iphdr *)(BPTR(buf) + offset);


    if (OPENVPN_IPH_GET_VER(ih->version_len) == ip_ver)
    {
        return buf_advance(buf, offset);
    }
    else
    {
        return 0;
    }
}
