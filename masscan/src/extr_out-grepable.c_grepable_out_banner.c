
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int time_t ;
struct Output {int dummy; } ;
typedef enum ApplicationProtocol { ____Placeholder_ApplicationProtocol } ApplicationProtocol ;
typedef int banner_buffer ;
typedef int FILE ;


 int UNUSEDPARM (unsigned int) ;
 int fprintf (int *,char*,...) ;
 char* masscan_app_to_string (int) ;
 int normalize_string (unsigned char const*,unsigned int,char*,int) ;

__attribute__((used)) static void
grepable_out_banner(struct Output *out, FILE *fp, time_t timestamp,
        unsigned ip, unsigned ip_proto, unsigned port,
        enum ApplicationProtocol proto, unsigned ttl,
        const unsigned char *px, unsigned length)
{
    char banner_buffer[4096];

    UNUSEDPARM(ttl);
    UNUSEDPARM(timestamp);
    UNUSEDPARM(out);
    UNUSEDPARM(ip_proto);

    fprintf(fp, "Host: %u.%u.%u.%u ()",
                    (unsigned char)(ip>>24),
                    (unsigned char)(ip>>16),
                    (unsigned char)(ip>> 8),
                    (unsigned char)(ip>> 0)
                    );
    fprintf(fp, "\tPort: %u", port);

    fprintf(fp, "\tService: %s", masscan_app_to_string(proto));

    normalize_string(px, length, banner_buffer, sizeof(banner_buffer));

    fprintf(fp, "\tBanner: %s\n", banner_buffer);

}
