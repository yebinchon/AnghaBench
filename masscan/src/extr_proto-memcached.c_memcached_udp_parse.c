
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int time_t ;
typedef int stuff ;
struct ProtocolState {int dummy; } ;
struct PreprocessedInfo {unsigned int port_src; unsigned int port_dst; int* ip_src; int* ip_dst; int ip_ttl; } ;
struct Output {int dummy; } ;
struct BannerOutput {int dummy; } ;


 int AUTO_LEN ;
 int PROTO_MEMCACHED ;
 unsigned int Templ_UDP ;
 int banout_append (struct BannerOutput*,int ,char*,int ) ;
 int banout_init (struct BannerOutput*) ;
 int banout_release (struct BannerOutput*) ;
 int banout_string (struct BannerOutput*,int ) ;
 int banout_string_length (struct BannerOutput*,int ) ;
 int default_udp_parse (struct Output*,int ,unsigned char const*,unsigned int,struct PreprocessedInfo*,int ) ;
 int memcached_tcp_parse (int ,int ,struct ProtocolState*,unsigned char const*,unsigned int,struct BannerOutput*,int ) ;
 int memset (struct ProtocolState*,int ,int) ;
 int output_report_banner (struct Output*,int ,unsigned int,int,unsigned int,int ,int ,int ,int ) ;
 scalar_t__ syn_cookie (unsigned int,unsigned int,unsigned int,unsigned int,int ) ;

unsigned
memcached_udp_parse(struct Output *out, time_t timestamp,
            const unsigned char *px, unsigned length,
            struct PreprocessedInfo *parsed,
            uint64_t entropy
            )
{
    unsigned ip_them;
    unsigned ip_me;
    unsigned port_them = parsed->port_src;
    unsigned port_me = parsed->port_dst;
    unsigned request_id = 0;
    unsigned sequence_num = 0;
    unsigned total_dgrams = 0;
    unsigned reserved = 0;
    unsigned cookie = 0;
    struct BannerOutput banout[1];


    if (length < 8)
        return 0;
    request_id = px[0]<<8 | px[1];
    sequence_num = px[2]<<8 | px[3];
    total_dgrams = px[4]<<8 | px[5];
    reserved = px[6]<<8 | px[7];


    if (sequence_num > 100)
        goto not_memcached;


    if (total_dgrams > 100)
        goto not_memcached;


    if (reserved != 0)
        goto not_memcached;


    ip_them = parsed->ip_src[0]<<24 | parsed->ip_src[1]<<16
            | parsed->ip_src[2]<< 8 | parsed->ip_src[3]<<0;
    ip_me = parsed->ip_dst[0]<<24 | parsed->ip_dst[1]<<16
            | parsed->ip_dst[2]<< 8 | parsed->ip_dst[3]<<0;




    cookie = (unsigned)syn_cookie(ip_them, port_them | Templ_UDP, ip_me, port_me, entropy);





    banout_init(banout);


    {
        struct ProtocolState stuff[1];

        memset(stuff, 0, sizeof(stuff[0]));

        memcached_tcp_parse(
            0, 0,
            stuff, px+8, length-8, banout,
            0);
    }

    if ((cookie&0xffff) != request_id)
        banout_append(banout, PROTO_MEMCACHED, " IP-MISMATCH", AUTO_LEN);


    output_report_banner(
        out, timestamp,
        ip_them, 17 , parsed->port_src,
        PROTO_MEMCACHED,
        parsed->ip_ttl,
        banout_string(banout, PROTO_MEMCACHED),
        banout_string_length(banout, PROTO_MEMCACHED));


    banout_release(banout);

    return 0;

not_memcached:
    return default_udp_parse(out, timestamp, px, length, parsed, entropy);
}
