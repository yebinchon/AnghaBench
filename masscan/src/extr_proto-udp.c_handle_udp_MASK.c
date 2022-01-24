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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  time_t ;
struct PreprocessedInfo {unsigned int port_src; int* ip_src; unsigned int app_length; int /*<<< orphan*/  mac_src; int /*<<< orphan*/  app_offset; } ;
struct Output {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PortStatus_Open ; 
 unsigned int FUNC0 (struct Output*,int /*<<< orphan*/ ,unsigned char const*,unsigned int,struct PreprocessedInfo*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct Output*,int /*<<< orphan*/ ,unsigned char const*,unsigned int,struct PreprocessedInfo*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct Output*,int /*<<< orphan*/ ,unsigned char const*,unsigned int,struct PreprocessedInfo*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct Output*,int /*<<< orphan*/ ,unsigned char const*,unsigned int,struct PreprocessedInfo*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct Output*,int /*<<< orphan*/ ,unsigned char const*,unsigned int,struct PreprocessedInfo*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct Output*,int /*<<< orphan*/ ,unsigned char const*,unsigned int,struct PreprocessedInfo*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct Output*,int /*<<< orphan*/ ,unsigned char const*,unsigned int,struct PreprocessedInfo*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct Output*,int /*<<< orphan*/ ,unsigned char const*,unsigned int,struct PreprocessedInfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct Output*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void 
FUNC9(struct Output *out, time_t timestamp,
        const unsigned char *px, unsigned length, 
        struct PreprocessedInfo *parsed, uint64_t entropy)
{
    unsigned ip_them;
    unsigned port_them = parsed->port_src;
    unsigned status = 0;

    ip_them = parsed->ip_src[0]<<24 | parsed->ip_src[1]<<16
            | parsed->ip_src[2]<< 8 | parsed->ip_src[3]<<0;



    switch (port_them) {
        case 53: /* DNS - Domain Name System (amplifier) */
            status = FUNC2(out, timestamp, px, length, parsed, entropy);
            break;
        case 123: /* NTP - Network Time Protocol (amplifier) */
            status = FUNC7(out, timestamp, px, length, parsed, entropy);
            break;
        case 137: /* NetBIOS (amplifier) */
            status = FUNC3(out, timestamp, px, length, parsed, entropy);
            break;
        case 161: /* SNMP - Simple Network Managment Protocol (amplifier) */
            status = FUNC4(out, timestamp, px, length, parsed, entropy);
            break;
        case 5683:
            status = FUNC0(out, timestamp, px + parsed->app_offset, parsed->app_length, parsed, entropy);
            break;
        case 11211: /* memcached (amplifier) */
            px += parsed->app_offset;
            length = parsed->app_length;
            status = FUNC6(out, timestamp, px, length, parsed, entropy);
            break;
        case 16464:
        case 16465:
        case 16470:
        case 16471:
            status = FUNC5(out, timestamp, px, length, parsed, entropy);
            break;
        default:
            px += parsed->app_offset;
            length = parsed->app_length;
            status = FUNC1(out, timestamp, px, length, parsed, entropy);
            break;
    }

    if (status == 0)
        FUNC8(
                        out,
                        timestamp,
                        PortStatus_Open,
                        ip_them,
                        17, /* ip proto = udp */
                        port_them,
                        0,
                        0,
                        parsed->mac_src);

}