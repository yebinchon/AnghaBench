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
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
struct openvpn_tcphdr {int /*<<< orphan*/  check; int /*<<< orphan*/  doff_res; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct buffer*) ; 
 scalar_t__ FUNC2 (struct buffer*) ; 
 int /*<<< orphan*/  D_MSS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int OPENVPN_TCPOLEN_MAXSEG ; 
 scalar_t__ OPENVPN_TCPOPT_EOL ; 
 scalar_t__ OPENVPN_TCPOPT_MAXSEG ; 
 scalar_t__ OPENVPN_TCPOPT_NOP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer*) ; 

void
FUNC7(struct buffer *buf, uint16_t maxmss)
{
    int hlen, olen, optlen;
    uint8_t *opt;
    uint16_t mssval;
    int accumulate;
    struct openvpn_tcphdr *tc;

    if (FUNC1(buf) < (int) sizeof(struct openvpn_tcphdr))
    {
        return;
    }

    FUNC6(buf);
    tc = (struct openvpn_tcphdr *) FUNC2(buf);
    hlen = FUNC3(tc->doff_res);

    /* Invalid header length or header without options. */
    if (hlen <= (int) sizeof(struct openvpn_tcphdr)
        || hlen > FUNC1(buf))
    {
        return;
    }

    for (olen = hlen - sizeof(struct openvpn_tcphdr),
         opt = (uint8_t *)(tc + 1);
         olen > 1;
         olen -= optlen, opt += optlen)
    {
        if (*opt == OPENVPN_TCPOPT_EOL)
        {
            break;
        }
        else if (*opt == OPENVPN_TCPOPT_NOP)
        {
            optlen = 1;
        }
        else
        {
            optlen = *(opt + 1);
            if (optlen <= 0 || optlen > olen)
            {
                break;
            }
            if (*opt == OPENVPN_TCPOPT_MAXSEG)
            {
                if (optlen != OPENVPN_TCPOLEN_MAXSEG)
                {
                    continue;
                }
                mssval = (opt[2]<<8)+opt[3];
                if (mssval > maxmss)
                {
                    FUNC4(D_MSS, "MSS: %d -> %d", (int) mssval, (int) maxmss);
                    accumulate = FUNC5(mssval);
                    opt[2] = (maxmss>>8)&0xff;
                    opt[3] = maxmss&0xff;
                    accumulate -= FUNC5(maxmss);
                    FUNC0(accumulate, tc->check);
                }
            }
        }
    }
}