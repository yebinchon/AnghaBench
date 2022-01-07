
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct openvpn_tcphdr {int flags; } ;
struct openvpn_ipv6hdr {scalar_t__ nexthdr; int payload_len; } ;
struct buffer {int dummy; } ;


 int BLEN (struct buffer*) ;
 scalar_t__ BPTR (struct buffer*) ;
 scalar_t__ OPENVPN_IPPROTO_TCP ;
 int OPENVPN_TCPH_SYN_MASK ;
 scalar_t__ buf_advance (struct buffer*,int) ;
 int mss_fixup_dowork (struct buffer*,scalar_t__) ;
 scalar_t__ ntohs (int ) ;
 int verify_align_4 (struct buffer*) ;

void
mss_fixup_ipv6(struct buffer *buf, int maxmss)
{
    const struct openvpn_ipv6hdr *pip6;
    struct buffer newbuf;

    if (BLEN(buf) < (int) sizeof(struct openvpn_ipv6hdr))
    {
        return;
    }

    verify_align_4(buf);
    pip6 = (struct openvpn_ipv6hdr *) BPTR(buf);




    if (BLEN(buf) != (int) ntohs(pip6->payload_len)+40)
    {
        return;
    }
    if (pip6->nexthdr != OPENVPN_IPPROTO_TCP)
    {
        return;
    }




    newbuf = *buf;
    if (buf_advance( &newbuf, 40 )
        && BLEN(&newbuf) >= (int) sizeof(struct openvpn_tcphdr))
    {
        struct openvpn_tcphdr *tc = (struct openvpn_tcphdr *) BPTR(&newbuf);
        if (tc->flags & OPENVPN_TCPH_SYN_MASK)
        {
            mss_fixup_dowork(&newbuf, (uint16_t) maxmss-20);
        }
    }
}
