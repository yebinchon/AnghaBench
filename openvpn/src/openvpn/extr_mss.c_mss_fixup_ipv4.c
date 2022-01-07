
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct openvpn_tcphdr {int flags; } ;
struct openvpn_iphdr {scalar_t__ protocol; int frag_off; int tot_len; int version_len; } ;
struct buffer {int dummy; } ;


 int BLEN (struct buffer*) ;
 scalar_t__ BPTR (struct buffer*) ;
 int OPENVPN_IPH_GET_LEN (int ) ;
 scalar_t__ OPENVPN_IPPROTO_TCP ;
 int OPENVPN_IP_OFFMASK ;
 int OPENVPN_TCPH_SYN_MASK ;
 scalar_t__ buf_advance (struct buffer*,int) ;
 int mss_fixup_dowork (struct buffer*,int ) ;
 int ntohs (int ) ;
 int verify_align_4 (struct buffer*) ;

void
mss_fixup_ipv4(struct buffer *buf, int maxmss)
{
    const struct openvpn_iphdr *pip;
    int hlen;

    if (BLEN(buf) < (int) sizeof(struct openvpn_iphdr))
    {
        return;
    }

    verify_align_4(buf);
    pip = (struct openvpn_iphdr *) BPTR(buf);

    hlen = OPENVPN_IPH_GET_LEN(pip->version_len);

    if (pip->protocol == OPENVPN_IPPROTO_TCP
        && ntohs(pip->tot_len) == BLEN(buf)
        && (ntohs(pip->frag_off) & OPENVPN_IP_OFFMASK) == 0
        && hlen <= BLEN(buf)
        && BLEN(buf) - hlen
        >= (int) sizeof(struct openvpn_tcphdr))
    {
        struct buffer newbuf = *buf;
        if (buf_advance(&newbuf, hlen))
        {
            struct openvpn_tcphdr *tc = (struct openvpn_tcphdr *) BPTR(&newbuf);
            if (tc->flags & OPENVPN_TCPH_SYN_MASK)
            {
                mss_fixup_dowork(&newbuf, (uint16_t) maxmss);
            }
        }
    }
}
