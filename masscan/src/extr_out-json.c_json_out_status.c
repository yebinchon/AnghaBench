
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct Output {int is_first_record_seen; } ;
typedef int reason_buffer ;
typedef int FILE ;


 int UNUSEDPARM (struct Output*) ;
 int fprintf (int *,char*,...) ;
 char* name_from_ip_proto (unsigned int) ;
 char* reason_string (unsigned int,char*,int) ;
 char* status_string (int) ;

__attribute__((used)) static void
json_out_status(struct Output *out, FILE *fp, time_t timestamp, int status,
               unsigned ip, unsigned ip_proto, unsigned port, unsigned reason, unsigned ttl)
{
    char reason_buffer[128];
    UNUSEDPARM(out);





    if (out->is_first_record_seen)
        fprintf(fp, ",\n");
    else
        out->is_first_record_seen = 1;

    fprintf(fp, "{ ");
    fprintf(fp, "  \"ip\": \"%u.%u.%u.%u\", ",
            (ip>>24)&0xFF, (ip>>16)&0xFF, (ip>> 8)&0xFF, (ip>> 0)&0xFF);
    fprintf(fp, "  \"timestamp\": \"%d\", \"ports\": [ {\"port\": %u, \"proto\": \"%s\", \"status\": \"%s\","
                " \"reason\": \"%s\", \"ttl\": %u} ] ",
                (int) timestamp,
                port,
                name_from_ip_proto(ip_proto),
                status_string(status),
                reason_string(reason, reason_buffer, sizeof(reason_buffer)),
                ttl
            );
    fprintf(fp, "}\n");


}
