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
typedef  unsigned int uint64_t ;
typedef  int /*<<< orphan*/  time_t ;
struct PreprocessedInfo {unsigned int app_offset; int app_length; int* ip_src; int /*<<< orphan*/  ip_ttl; int /*<<< orphan*/  port_src; } ;
struct Output {int dummy; } ;
struct BannerOutput {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROTO_NTP ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct BannerOutput*) ; 
 int /*<<< orphan*/  FUNC2 (struct BannerOutput*) ; 
 int /*<<< orphan*/  FUNC3 (struct BannerOutput*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct BannerOutput*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char const*,int,struct BannerOutput*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct Output*,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

unsigned
FUNC7(struct Output *out, time_t timestamp,
            const unsigned char *px, unsigned length,
            struct PreprocessedInfo *parsed,
            uint64_t entropy
            )
{
    unsigned ip_them;
    unsigned request_id = 0;
    struct BannerOutput banout[1];
    unsigned offset = parsed->app_offset;
    
    FUNC0(length);
    FUNC0(entropy);
    
    if (parsed->app_length < 4)
        return 0;
    
    /* Initialize the "banner output" module that we'll use to print
     * pretty text in place of the raw packet */
    FUNC1(banout);
    
    /* Parse the packet */
    switch ((px[offset]>>3)&7) {
        case 2:
            FUNC5(
               px + parsed->app_offset,    /* incoming  response */
               parsed->app_length,         /* length of  response */
               banout,                     /* banner printing */
               &request_id);               /* syn-cookie info */
            break;
        default:
            FUNC2(banout);
            return 0;
    }
    
    ip_them = parsed->ip_src[0]<<24 | parsed->ip_src[1]<<16
    | parsed->ip_src[2]<< 8 | parsed->ip_src[3]<<0;
    /*ip_me = parsed->ip_dst[0]<<24 | parsed->ip_dst[1]<<16
    | parsed->ip_dst[2]<< 8 | parsed->ip_dst[3]<<0;*/
    
    /* Validate the "syn-cookie" style information. */
    //seqno = (unsigned)syn_cookie(ip_them, port_them | Templ_UDP, ip_me, port_me);
    //if ((seqno&0x7FFFffff) != request_id)
    //    return 1;
    
    /* Print the banner information, or save to a file, depending */
    FUNC6(
                         out, timestamp,
                         ip_them, 17, parsed->port_src,
                         PROTO_NTP,
                         parsed->ip_ttl,
                         FUNC3(banout, PROTO_NTP),
                         FUNC4(banout, PROTO_NTP));
    
    /* Free memory for the banner, if there was any allocated */
    FUNC2(banout);
    
    return 0;
}