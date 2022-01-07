
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int time_t ;
struct PreprocessedInfo {unsigned int port_src; unsigned int transport_offset; int* ip_src; int mac_src; int ip_ttl; } ;
struct Output {int dummy; } ;


 int PortStatus_Closed ;
 int PortStatus_Open ;
 int UNUSEDPARM (int ) ;
 int output_report_status (struct Output*,int ,int ,unsigned int,int,unsigned int,int ,int ,int ) ;

void
handle_sctp(struct Output *out, time_t timestamp,
            const unsigned char *px, unsigned length,
            unsigned cookie,
            struct PreprocessedInfo *parsed,
            uint64_t entropy)
{
    unsigned ip_them;
    unsigned port_them = parsed->port_src;
    unsigned verification_tag;
    unsigned offset = parsed->transport_offset;

    UNUSEDPARM(entropy);

    ip_them = parsed->ip_src[0]<<24 | parsed->ip_src[1]<<16
            | parsed->ip_src[2]<< 8 | parsed->ip_src[3]<<0;

    verification_tag = px[offset + 4] << 24 | px[offset + 5] << 16 |
                        px[offset + 6] << 8 | px[offset + 7];
    if (cookie != verification_tag)
        return;

    if (offset + 16 > length)
        return;

    switch (px[offset + 12]) {
    case 2:
        output_report_status(
                        out,
                        timestamp,
                        PortStatus_Open,
                        ip_them,
                        132,
                        port_them,
                        0,
                        parsed->ip_ttl,
                        parsed->mac_src);
        break;
    case 6:
        output_report_status(
                        out,
                        timestamp,
                        PortStatus_Closed,
                        ip_them,
                        132,
                        port_them,
                        0,
                        parsed->ip_ttl,
                        parsed->mac_src);
        break;
    default:
        ;
    }



}
