
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int time_t ;
struct PreprocessedInfo {unsigned int port_src; unsigned int port_dst; int* ip_dst; int* ip_src; int transport_offset; int mac_src; int ip_ttl; } ;
struct Output {int dummy; } ;
struct DedupTable {int dummy; } ;


 int PortStatus_Closed ;
 int PortStatus_Open ;
 int Templ_ICMP_echo ;
 struct DedupTable* dedup_create () ;
 int dedup_is_duplicate (struct DedupTable*,unsigned int,int ,unsigned int,int ) ;
 int matches_me (struct Output*,unsigned int,unsigned int) ;
 int output_report_status (struct Output*,int ,int ,unsigned int,unsigned int,unsigned int,int ,int ,int ) ;
 int parse_port_unreachable (int ,int ,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int syn_cookie (unsigned int,int ,unsigned int,int ,int ) ;

void
handle_icmp(struct Output *out, time_t timestamp,
            const unsigned char *px, unsigned length,
            struct PreprocessedInfo *parsed,
            uint64_t entropy)
{
    unsigned type = parsed->port_src;
    unsigned code = parsed->port_dst;
    unsigned seqno_me;
    unsigned ip_me;
    unsigned ip_them;
    unsigned cookie;


    static struct DedupTable *echo_reply_dedup = ((void*)0);


    if (!echo_reply_dedup)
        echo_reply_dedup = dedup_create();

    ip_me = parsed->ip_dst[0]<<24 | parsed->ip_dst[1]<<16
            | parsed->ip_dst[2]<< 8 | parsed->ip_dst[3]<<0;
    ip_them = parsed->ip_src[0]<<24 | parsed->ip_src[1]<<16
            | parsed->ip_src[2]<< 8 | parsed->ip_src[3]<<0;

    seqno_me = px[parsed->transport_offset+4]<<24
                | px[parsed->transport_offset+5]<<16
                | px[parsed->transport_offset+6]<<8
                | px[parsed->transport_offset+7]<<0;

    switch (type) {
    case 0:
        cookie = (unsigned)syn_cookie(ip_them, Templ_ICMP_echo, ip_me, 0, entropy);
        if ((cookie & 0xFFFFFFFF) != seqno_me)
            return;

        if (dedup_is_duplicate(echo_reply_dedup, ip_them, 0, ip_me, 0))
            break;







        output_report_status(
                            out,
                            timestamp,
                            PortStatus_Open,
                            ip_them,
                            1,
                            0,
                            0,
                            parsed->ip_ttl,
                            parsed->mac_src);
        break;
    case 3:
        switch (code) {
        case 0:


            break;
        case 1:

            break;
        case 2:

            break;
        case 3:
            if (length - parsed->transport_offset > 8) {
                unsigned ip_me2, ip_them2, port_me2, port_them2;
                unsigned ip_proto;
                int err;

                err = parse_port_unreachable(
                    px + parsed->transport_offset + 8,
                    length - parsed->transport_offset + 8,
                    &ip_me2, &ip_them2, &port_me2, &port_them2,
                    &ip_proto);

                if (err)
                    return;

                if (!matches_me(out, ip_me2, port_me2))
                    return;

                switch (ip_proto) {
                case 6:
                    output_report_status(
                                        out,
                                        timestamp,
                                        PortStatus_Closed,
                                        ip_them2,
                                        ip_proto,
                                        port_them2,
                                        0,
                                        parsed->ip_ttl,
                                        parsed->mac_src);
                    break;
                case 17:
                    output_report_status(
                                        out,
                                        timestamp,
                                        PortStatus_Closed,
                                        ip_them2,
                                        ip_proto,
                                        port_them2,
                                        0,
                                        parsed->ip_ttl,
                                        parsed->mac_src);
                    break;
                case 132:
                    output_report_status(
                                        out,
                                        timestamp,
                                        PortStatus_Closed,
                                        ip_them2,
                                        ip_proto,
                                        port_them2,
                                        0,
                                        parsed->ip_ttl,
                                        parsed->mac_src);
                    break;
                }
            }

        }
        break;
    default:
    ;
    }

}
