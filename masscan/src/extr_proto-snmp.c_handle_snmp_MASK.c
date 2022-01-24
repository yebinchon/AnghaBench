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
struct PreprocessedInfo {unsigned int port_src; unsigned int port_dst; int app_offset; int* ip_src; int* ip_dst; int /*<<< orphan*/  ip_ttl; int /*<<< orphan*/  app_length; } ;
struct Output {int dummy; } ;
struct BannerOutput {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROTO_SNMP ; 
 unsigned int Templ_UDP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct BannerOutput*) ; 
 int /*<<< orphan*/  FUNC2 (struct BannerOutput*) ; 
 int /*<<< orphan*/  FUNC3 (struct BannerOutput*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct BannerOutput*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Output*,int /*<<< orphan*/ ,unsigned int,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char const*,int /*<<< orphan*/ ,struct BannerOutput*,unsigned int*) ; 
 scalar_t__ FUNC7 (unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

unsigned
FUNC8(struct Output *out, time_t timestamp,
            const unsigned char *px, unsigned length,
            struct PreprocessedInfo *parsed,
            uint64_t entropy
            )
{
    unsigned ip_them;
    unsigned ip_me;
    unsigned port_them = parsed->port_src;
    unsigned port_me = parsed->port_dst;
    unsigned seqno;
    unsigned request_id = 0;
    struct BannerOutput banout[1];

    FUNC0(length);

    /* Initialize the "banner output" module that we'll use to print
     * pretty text in place of the raw packet */
    FUNC1(banout);

    /* Parse the SNMP packet */
    FUNC6(
        px + parsed->app_offset,    /* incoming SNMP response */
        parsed->app_length,         /* length of SNMP response */
        banout,                     /* banner printing */
        &request_id);               /* syn-cookie info */


    ip_them = parsed->ip_src[0]<<24 | parsed->ip_src[1]<<16
            | parsed->ip_src[2]<< 8 | parsed->ip_src[3]<<0;
    ip_me = parsed->ip_dst[0]<<24 | parsed->ip_dst[1]<<16
            | parsed->ip_dst[2]<< 8 | parsed->ip_dst[3]<<0;

    /* Validate the "syn-cookie" style information. In the case of SNMP,
     * this will be held in the "request-id" field. If the cookie isn't
     * a good one, then we'll ignore the response */
    seqno = (unsigned)FUNC7(ip_them, port_them | Templ_UDP, ip_me, port_me, entropy);
    if ((seqno&0x7FFFffff) != request_id)
        return 1;

    /* Print the banner information, or save to a file, depending */
    FUNC5(
        out, timestamp,
        ip_them, 17, parsed->port_src,
        PROTO_SNMP,
        parsed->ip_ttl,
        FUNC3(banout, PROTO_SNMP),
        FUNC4(banout, PROTO_SNMP));

    /* Free memory for the banner, if there was any allocated */
    FUNC2(banout);

    return 0;
}