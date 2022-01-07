
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
typedef int time_t ;
struct PreprocessedInfo {unsigned int app_offset; int app_length; int* ip_src; int ip_ttl; int port_src; } ;
struct Output {int dummy; } ;
struct BannerOutput {int dummy; } ;


 int PROTO_NTP ;
 int UNUSEDPARM (unsigned int) ;
 int banout_init (struct BannerOutput*) ;
 int banout_release (struct BannerOutput*) ;
 int banout_string (struct BannerOutput*,int ) ;
 int banout_string_length (struct BannerOutput*,int ) ;
 int ntp_v2_parse (unsigned char const*,int,struct BannerOutput*,unsigned int*) ;
 int output_report_banner (struct Output*,int ,unsigned int,int,int ,int ,int ,int ,int ) ;

unsigned
ntp_handle_response(struct Output *out, time_t timestamp,
            const unsigned char *px, unsigned length,
            struct PreprocessedInfo *parsed,
            uint64_t entropy
            )
{
    unsigned ip_them;
    unsigned request_id = 0;
    struct BannerOutput banout[1];
    unsigned offset = parsed->app_offset;

    UNUSEDPARM(length);
    UNUSEDPARM(entropy);

    if (parsed->app_length < 4)
        return 0;



    banout_init(banout);


    switch ((px[offset]>>3)&7) {
        case 2:
            ntp_v2_parse(
               px + parsed->app_offset,
               parsed->app_length,
               banout,
               &request_id);
            break;
        default:
            banout_release(banout);
            return 0;
    }

    ip_them = parsed->ip_src[0]<<24 | parsed->ip_src[1]<<16
    | parsed->ip_src[2]<< 8 | parsed->ip_src[3]<<0;
    output_report_banner(
                         out, timestamp,
                         ip_them, 17, parsed->port_src,
                         PROTO_NTP,
                         parsed->ip_ttl,
                         banout_string(banout, PROTO_NTP),
                         banout_string_length(banout, PROTO_NTP));


    banout_release(banout);

    return 0;
}
