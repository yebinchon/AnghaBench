#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct openvpn_tcphdr {int flags; } ;
struct openvpn_ipv6hdr {scalar_t__ nexthdr; int /*<<< orphan*/  payload_len; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct buffer*) ; 
 scalar_t__ FUNC1 (struct buffer*) ; 
 scalar_t__ OPENVPN_IPPROTO_TCP ; 
 int OPENVPN_TCPH_SYN_MASK ; 
 scalar_t__ FUNC2 (struct buffer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer*) ; 

void
FUNC6(struct buffer *buf, int maxmss)
{
    const struct openvpn_ipv6hdr *pip6;
    struct buffer newbuf;

    if (FUNC0(buf) < (int) sizeof(struct openvpn_ipv6hdr))
    {
        return;
    }

    FUNC5(buf);
    pip6 = (struct openvpn_ipv6hdr *) FUNC1(buf);

    /* do we have the full IPv6 packet?
     * "payload_len" does not include IPv6 header (+40 bytes)
     */
    if (FUNC0(buf) != (int) FUNC4(pip6->payload_len)+40)
    {
        return;
    }

    /* follow header chain until we reach final header, then check for TCP
     *
     * An IPv6 packet could, theoretically, have a chain of multiple headers
     * before the final header (TCP, UDP, ...), so we'd need to walk that
     * chain (see RFC 2460 and RFC 6564 for details).
     *
     * In practice, "most typically used" extension headers (AH, routing,
     * fragment, mobility) are very unlikely to be seen inside an OpenVPN
     * tun, so for now, we only handle the case of "single next header = TCP"
     */
    if (pip6->nexthdr != OPENVPN_IPPROTO_TCP)
    {
        return;
    }

    /* skip IPv6 header (40 bytes),
     * verify remainder is large enough to contain a full TCP header
     */
    newbuf = *buf;
    if (FUNC2( &newbuf, 40 )
        && FUNC0(&newbuf) >= (int) sizeof(struct openvpn_tcphdr))
    {
        struct openvpn_tcphdr *tc = (struct openvpn_tcphdr *) FUNC1(&newbuf);
        if (tc->flags & OPENVPN_TCPH_SYN_MASK)
        {
            FUNC3(&newbuf, (uint16_t) maxmss-20);
        }
    }
}