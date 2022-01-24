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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  time_t ;
struct PreprocessedInfo {unsigned int port_src; unsigned int port_dst; int* ip_src; int* ip_dst; int /*<<< orphan*/  ip_ttl; scalar_t__ app_length; scalar_t__ app_offset; } ;
struct Output {int dummy; } ;
struct DNS_Incoming {int id; int qr; int rcode; unsigned int* rr_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROTO_DNS_VERSIONBIND ; 
 unsigned int Templ_UDP ; 
 unsigned int FUNC0 (unsigned char const*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct Output*,int /*<<< orphan*/ ,unsigned int,int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct DNS_Incoming*,unsigned char const*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (unsigned int,unsigned int,unsigned int,unsigned int,int) ; 

unsigned
FUNC5(struct Output *out, time_t timestamp,
            const unsigned char *px, unsigned length, 
            struct PreprocessedInfo *parsed,
            uint64_t entropy)
{
    unsigned ip_them;
    unsigned ip_me;
    unsigned port_them = parsed->port_src;
    unsigned port_me = parsed->port_dst;
    struct DNS_Incoming dns[1];
    unsigned offset;
    uint64_t seqno;
    const char *reason = 0;

    ip_them = parsed->ip_src[0]<<24 | parsed->ip_src[1]<<16
            | parsed->ip_src[2]<< 8 | parsed->ip_src[3]<<0;
    ip_me = parsed->ip_dst[0]<<24 | parsed->ip_dst[1]<<16
            | parsed->ip_dst[2]<< 8 | parsed->ip_dst[3]<<0;

    seqno = (unsigned)FUNC4(ip_them, port_them | Templ_UDP, ip_me, port_me, entropy);

    FUNC2(dns, px, parsed->app_offset, parsed->app_offset + parsed->app_length);

    if ((seqno & 0xFFFF) != dns->id)
        return 1;

    /*
     * In practice, DNS queries always have the query count set to 1,
     * though in theory servers could support multiple queries in a 
     * single request, almost none of them do
     */
    if (dns->qr != 1)
        return 0;
    
    /*
     * If we get back NOERROR, we drop through and extract the strings in
     * the packet. Otherwise, we report the error here.
     */
    switch (dns->rcode) {
        case 0: reason = 0; break; /* NOERROR */
        case 1: reason = "1:FORMERR"; break;
        case 2: reason = "2:SERVFAIL"; break;
        case 3: reason = "3:NXDOMAIN"; break;
        case 4: reason = "4:NOTIMP"; break;
        case 5: reason = "5:REFUSED"; break;
        case 6: reason = "6:YXDOMAIN"; break;
        case 7: reason = "7:XRRSET"; break;
        case 8: reason = "8:NOTAUTH"; break;
        case 9: reason = "9:NOTZONE"; break;
    }
    if (reason != 0) {
        FUNC1(
                         out, timestamp,
                         ip_them, 17, port_them,
                         PROTO_DNS_VERSIONBIND,
                         parsed->ip_ttl,
                         (const unsigned char*)reason,
                         (unsigned)FUNC3(reason));
        return 0;
    }
    
    /*if (dns->qdcount != 1)
        return 0;
    if (dns->ancount < 1)
        return 0;
    if (dns->rr_count < 2)
        return 0;*/


    offset = dns->rr_offset[1];
    offset = FUNC0(px, offset, length);
    if (offset + 10 >= length)
        return 0;

    {
        unsigned type = px[offset+0]<<8 | px[offset+1];
        unsigned xclass = px[offset+2]<<8 | px[offset+3];
        unsigned rrlen = px[offset+8]<<8 | px[offset+9];
        unsigned txtlen = px[offset+10];

        if (rrlen == 0 || txtlen > rrlen-1)
            return 0;
        if (type != 0x10 || xclass != 3)
            return 0;

        offset += 11;

        FUNC1(
                out, timestamp,
                ip_them, 17, port_them,
                PROTO_DNS_VERSIONBIND,
                parsed->ip_ttl,
                px + offset, txtlen);
    }


    return 0;
}