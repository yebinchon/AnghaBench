
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int time_t ;
struct PreprocessedInfo {unsigned int port_src; unsigned int port_dst; int* ip_src; int* ip_dst; int ip_ttl; } ;
struct Output {int dummy; } ;
struct BannerOutput {int dummy; } ;


 int AUTO_LEN ;
 int LOG (int,char*) ;
 int PROTO_COAP ;
 unsigned int Templ_UDP ;
 int banout_append (struct BannerOutput*,int ,char*,int ) ;
 int banout_init (struct BannerOutput*) ;
 int banout_release (struct BannerOutput*) ;
 int banout_string (struct BannerOutput*,int ) ;
 int banout_string_length (struct BannerOutput*,int ) ;
 int coap_parse (unsigned char const*,unsigned int,struct BannerOutput*,unsigned int*) ;
 int default_udp_parse (struct Output*,int ,unsigned char const*,unsigned int,struct PreprocessedInfo*,int ) ;
 int output_report_banner (struct Output*,int ,unsigned int,int,unsigned int,int ,int ,int ,int ) ;
 scalar_t__ syn_cookie (unsigned int,unsigned int,unsigned int,unsigned int,int ) ;

unsigned
coap_handle_response(struct Output *out, time_t timestamp,
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

    LOG(1, "[+] COAP\n");

    ip_them = parsed->ip_src[0]<<24 | parsed->ip_src[1]<<16
        | parsed->ip_src[2]<< 8 | parsed->ip_src[3]<<0;
    ip_me = parsed->ip_dst[0]<<24 | parsed->ip_dst[1]<<16
        | parsed->ip_dst[2]<< 8 | parsed->ip_dst[3]<<0;



    banout_init(banout);




    is_valid = coap_parse(px, length, banout, &message_id);



    cookie = (unsigned)syn_cookie(ip_them, port_them | Templ_UDP, ip_me, port_me, entropy);





    if ((cookie&0xffff) != message_id)
        banout_append(banout, PROTO_COAP, " IP-MISMATCH", AUTO_LEN);



    if (is_valid) {
        output_report_banner(
            out, timestamp,
            ip_them, 17 , parsed->port_src,
            PROTO_COAP,
            parsed->ip_ttl,
            banout_string(banout, PROTO_COAP),
            banout_string_length(banout, PROTO_COAP));
        banout_release(banout);
        return 0;
    } else {
        banout_release(banout);
        return default_udp_parse(out, timestamp, px, length, parsed, entropy);
    }
}
