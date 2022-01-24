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
typedef  int /*<<< orphan*/  uint16_t ;
struct openvpn_tcphdr {int flags; } ;
struct openvpn_iphdr {scalar_t__ protocol; int /*<<< orphan*/  frag_off; int /*<<< orphan*/  tot_len; int /*<<< orphan*/  version_len; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct buffer*) ; 
 scalar_t__ FUNC1 (struct buffer*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ OPENVPN_IPPROTO_TCP ; 
 int OPENVPN_IP_OFFMASK ; 
 int OPENVPN_TCPH_SYN_MASK ; 
 scalar_t__ FUNC3 (struct buffer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer*) ; 

void
FUNC7(struct buffer *buf, int maxmss)
{
    const struct openvpn_iphdr *pip;
    int hlen;

    if (FUNC0(buf) < (int) sizeof(struct openvpn_iphdr))
    {
        return;
    }

    FUNC6(buf);
    pip = (struct openvpn_iphdr *) FUNC1(buf);

    hlen = FUNC2(pip->version_len);

    if (pip->protocol == OPENVPN_IPPROTO_TCP
        && FUNC5(pip->tot_len) == FUNC0(buf)
        && (FUNC5(pip->frag_off) & OPENVPN_IP_OFFMASK) == 0
        && hlen <= FUNC0(buf)
        && FUNC0(buf) - hlen
        >= (int) sizeof(struct openvpn_tcphdr))
    {
        struct buffer newbuf = *buf;
        if (FUNC3(&newbuf, hlen))
        {
            struct openvpn_tcphdr *tc = (struct openvpn_tcphdr *) FUNC1(&newbuf);
            if (tc->flags & OPENVPN_TCPH_SYN_MASK)
            {
                FUNC4(&newbuf, (uint16_t) maxmss);
            }
        }
    }
}