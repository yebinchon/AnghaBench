
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct Output {int dummy; } ;
typedef enum ApplicationProtocol { ____Placeholder_ApplicationProtocol } ApplicationProtocol ;
typedef int banner_buffer ;
typedef int FILE ;


 int UNUSEDPARM (unsigned int) ;
 int fprintf (int *,char*,...) ;
 char* masscan_app_to_string (int) ;
 char* name_from_ip_proto (unsigned int) ;
 char* normalize_ndjson_string (unsigned char const*,unsigned int,char*,int) ;

__attribute__((used)) static void
ndjson_out_banner(struct Output *out, FILE *fp, time_t timestamp,
                 unsigned ip, unsigned ip_proto, unsigned port,
                 enum ApplicationProtocol proto,
                 unsigned ttl,
                 const unsigned char *px, unsigned length)
{
    char banner_buffer[65536];

    UNUSEDPARM(ttl);


    fprintf(fp, "{");
    fprintf(fp, "\"ip\":\"%u.%u.%u.%u\",",
            (ip>>24)&0xFF, (ip>>16)&0xFF, (ip>> 8)&0xFF, (ip>> 0)&0xFF);
    fprintf(fp, "\"timestamp\":\"%d\",\"port\":%u,\"proto\":\"%s\",\"rec_type\":\"banner\",\"data\":{\"service_name\":\"%s\",\"banner\":\"%s\"}",
            (int) timestamp,
            port,
            name_from_ip_proto(ip_proto),
            masscan_app_to_string(proto),
            normalize_ndjson_string(px, length, banner_buffer, sizeof(banner_buffer))
            );







    fprintf(fp, "}\n");

    UNUSEDPARM(out);
}
