
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int time_t ;
struct PreprocessedInfo {unsigned int port_src; int* ip_src; int ip_ttl; } ;
struct Output {int dummy; } ;


 int PROTO_NONE ;
 int UNUSEDPARM (int ) ;
 int output_report_banner (struct Output*,int ,unsigned int,int,unsigned int,int ,int ,unsigned char const*,unsigned int) ;

unsigned
default_udp_parse(struct Output *out, time_t timestamp,
           const unsigned char *px, unsigned length,
           struct PreprocessedInfo *parsed,
           uint64_t entropy)
{
    unsigned ip_them;

    unsigned port_them = parsed->port_src;


    UNUSEDPARM(entropy);

    ip_them = parsed->ip_src[0]<<24 | parsed->ip_src[1]<<16 | parsed->ip_src[2]<< 8 | parsed->ip_src[3]<<0;


    if (length > 64)
        length = 64;

    output_report_banner(
                         out, timestamp,
                         ip_them, 17, port_them,
                         PROTO_NONE,
                         parsed->ip_ttl,
                         px, length);

    return 0;
}
