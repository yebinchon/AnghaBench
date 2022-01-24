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
struct PreprocessedInfo {unsigned int port_src; unsigned int port_dst; int* ip_src; int* ip_dst; int /*<<< orphan*/  ip_ttl; } ;
struct Output {int dummy; } ;
struct BannerOutput {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PROTO_COAP ; 
 unsigned int Templ_UDP ; 
 int /*<<< orphan*/  FUNC1 (struct BannerOutput*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct BannerOutput*) ; 
 int /*<<< orphan*/  FUNC3 (struct BannerOutput*) ; 
 int /*<<< orphan*/  FUNC4 (struct BannerOutput*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct BannerOutput*,int /*<<< orphan*/ ) ; 
 int FUNC6 (unsigned char const*,unsigned int,struct BannerOutput*,unsigned int*) ; 
 int FUNC7 (struct Output*,int /*<<< orphan*/ ,unsigned char const*,unsigned int,struct PreprocessedInfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct Output*,int /*<<< orphan*/ ,unsigned int,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (unsigned int,unsigned int,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

unsigned
FUNC10(struct Output *out, time_t timestamp,
            const unsigned char *px, unsigned length,
            struct PreprocessedInfo *parsed,
            uint64_t entropy
            )
{
    unsigned ip_them;
    unsigned ip_me;
    unsigned port_them = parsed->port_src;
    unsigned port_me = parsed->port_dst;
    unsigned message_id = 0;
    unsigned cookie;
    struct BannerOutput banout[1];
    bool is_valid;
    
    FUNC0(1, "[+] COAP\n");
    /* Grab IP addresses */
    ip_them = parsed->ip_src[0]<<24 | parsed->ip_src[1]<<16
        | parsed->ip_src[2]<< 8 | parsed->ip_src[3]<<0;
    ip_me = parsed->ip_dst[0]<<24 | parsed->ip_dst[1]<<16
        | parsed->ip_dst[2]<< 8 | parsed->ip_dst[3]<<0;
    
    /* Initialize the "banner output" module that we'll use to print
     * pretty text in place of the raw packet */
    FUNC2(banout);
    
    /*
     * Do the protocol parsing
     */
    is_valid = FUNC6(px, length, banout, &message_id);
    
    
    /* Validate the "syn-cookie" style information, which should match the "Message ID field*/
    cookie = (unsigned)FUNC9(ip_them, port_them | Templ_UDP, ip_me, port_me, entropy);
    /*if ((seqno&0xffff) != message_id)
     goto not_this_protocol;*/
    
    /* See if cookies match. So far, we are allowing responses with the
     * wrong cookie */
    if ((cookie&0xffff) != message_id)
        FUNC1(banout, PROTO_COAP, " IP-MISMATCH", AUTO_LEN);

    
    /* Print the banner information, or save to a file, depending */
    if (is_valid) {
        FUNC8(
            out, timestamp,
            ip_them, 17 /*udp*/, parsed->port_src,
            PROTO_COAP,
            parsed->ip_ttl,
            FUNC4(banout, PROTO_COAP),
            FUNC5(banout, PROTO_COAP));
        FUNC3(banout);
        return 0;
    } else {
        FUNC3(banout);
        return FUNC7(out, timestamp, px, length, parsed, entropy);
    }
}