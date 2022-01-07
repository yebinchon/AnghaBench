
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int values ;
typedef scalar_t__ time_t ;
struct TYPE_2__ {int outstanding; } ;
struct Output {TYPE_1__ redis; } ;
typedef scalar_t__ ptrdiff_t ;
typedef int port_string ;
typedef int line ;
typedef int ip_string ;
typedef int SOCKET ;
typedef int FILE ;


 int LOG (int ,char*) ;
 int clean_response_queue (struct Output*,int ) ;
 int exit (int) ;
 char* name_from_ip_proto (unsigned int) ;
 size_t send (int ,char*,int,int ) ;
 int sprintf_s (char*,int,char*,int,...) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
redis_out_status(struct Output *out, FILE *fp, time_t timestamp,
    int status, unsigned ip, unsigned ip_proto, unsigned port, unsigned reason, unsigned ttl)
{
    ptrdiff_t fd = (ptrdiff_t)fp;
    char line[1024];
    int line_length;
    char ip_string[16];
    char port_string[10];
    int ip_string_length;
    int port_string_length;
    size_t count;
    char values[64];
    int values_length;

    ip_string_length = sprintf_s(ip_string, sizeof(ip_string), "%u.%u.%u.%u",
        (unsigned char)(ip>>24),
        (unsigned char)(ip>>16),
        (unsigned char)(ip>> 8),
        (unsigned char)(ip>> 0));
    port_string_length = sprintf_s(port_string, sizeof(port_string), "%u/%s", port, name_from_ip_proto(ip_proto));
    sprintf_s(line, sizeof(line),
            "*3\r\n"
            "$4\r\nSADD\r\n"
            "$%d\r\n%s\r\n"
            "$%d\r\n%s\r\n"
            ,
            4, "host",
            ip_string_length, ip_string
            );

    count = send((SOCKET)fd, line, (int)strlen(line), 0);
    if (count != strlen(line)) {
        LOG(0, "redis: error sending data\n");
        exit(1);
    }
    out->redis.outstanding++;





    sprintf_s(line, sizeof(line),
            "*3\r\n"
            "$4\r\nSADD\r\n"
            "$%d\r\n%s\r\n"
            "$%d\r\n%s\r\n"
            ,
            ip_string_length, ip_string,
            port_string_length, port_string);

    count = send((SOCKET)fd, line, (int)strlen(line), 0);
    if (count != strlen(line)) {
        LOG(0, "redis: error sending data\n");
        exit(1);
    }
    out->redis.outstanding++;






    values_length = sprintf_s(values, sizeof(values), "%u:%u:%u:%u",
        (unsigned)timestamp, status, reason, ttl);
    line_length = sprintf_s(line, sizeof(line),
            "*3\r\n"
            "$4\r\nSADD\r\n"
            "$%d\r\n%s:%s\r\n"
            "$%d\r\n%s\r\n"
            ,
            ip_string_length + 1 + port_string_length,
            ip_string, port_string,
            values_length, values
            );

    count = send((SOCKET)fd, line, (int)line_length, 0);
    if (count != (size_t)line_length) {
        LOG(0, "redis: error sending data\n");
        exit(1);
    }
    out->redis.outstanding++;

    clean_response_queue(out, (SOCKET)fd);

}
