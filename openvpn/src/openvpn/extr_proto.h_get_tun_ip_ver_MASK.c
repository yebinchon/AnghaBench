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
struct openvpn_iphdr {int dummy; } ;
struct openvpn_ethhdr {int /*<<< orphan*/  proto; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/ * FUNC1 (struct buffer*) ; 
 int DEV_TYPE_TAP ; 
 int DEV_TYPE_TUN ; 
 scalar_t__ OPENVPN_ETH_P_IPV4 ; 
 scalar_t__ OPENVPN_ETH_P_IPV6 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) inline static int
FUNC5(int tunnel_type, struct buffer *buf, int *ip_hdr_offset)
{
    int ip_ver = -1;

    /* for tun get ip version from ip header */
    if (tunnel_type == DEV_TYPE_TUN)
    {
        *ip_hdr_offset = 0;
        if (FUNC3(FUNC0(buf) >= (int) sizeof(struct openvpn_iphdr)))
        {
            ip_ver = FUNC2(*FUNC1(buf));
        }
    }
    else if (tunnel_type == DEV_TYPE_TAP)
    {
        *ip_hdr_offset = (int)(sizeof(struct openvpn_ethhdr));
        /* for tap get ip version from eth header */
        if (FUNC3(FUNC0(buf) >= *ip_hdr_offset))
        {
            const struct openvpn_ethhdr *eh = (const struct openvpn_ethhdr *) FUNC1(buf);
            uint16_t proto = FUNC4(eh->proto);
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