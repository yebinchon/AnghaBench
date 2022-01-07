
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int time_t ;
struct PreprocessedInfo {unsigned int port_src; unsigned int port_dst; int app_offset; int* ip_src; int* ip_dst; int ip_ttl; int app_length; } ;
struct Output {int dummy; } ;
struct BannerOutput {int dummy; } ;


 int PROTO_SNMP ;
 unsigned int Templ_UDP ;
 int UNUSEDPARM (unsigned int) ;
 int banout_init (struct BannerOutput*) ;
 int banout_release (struct BannerOutput*) ;
 int banout_string (struct BannerOutput*,int ) ;
 int banout_string_length (struct BannerOutput*,int ) ;
 int output_report_banner (struct Output*,int ,unsigned int,int,unsigned int,int ,int ,int ,int ) ;
 int snmp_parse (unsigned char const*,int ,struct BannerOutput*,unsigned int*) ;
 scalar_t__ syn_cookie (unsigned int,unsigned int,unsigned int,unsigned int,int ) ;

unsigned
handle_snmp(struct Output *out, time_t timestamp,
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

    UNUSEDPARM(length);



    banout_init(banout);


    snmp_parse(
        px + parsed->app_offset,
        parsed->app_length,
        banout,
        &request_id);


    ip_them = parsed->ip_src[0]<<24 | parsed->ip_src[1]<<16
            | parsed->ip_src[2]<< 8 | parsed->ip_src[3]<<0;
    ip_me = parsed->ip_dst[0]<<24 | parsed->ip_dst[1]<<16
            | parsed->ip_dst[2]<< 8 | parsed->ip_dst[3]<<0;




    seqno = (unsigned)syn_cookie(ip_them, port_them | Templ_UDP, ip_me, port_me, entropy);
    if ((seqno&0x7FFFffff) != request_id)
        return 1;


    output_report_banner(
        out, timestamp,
        ip_them, 17, parsed->port_src,
        PROTO_SNMP,
        parsed->ip_ttl,
        banout_string(banout, PROTO_SNMP),
        banout_string_length(banout, PROTO_SNMP));


    banout_release(banout);

    return 0;
}
