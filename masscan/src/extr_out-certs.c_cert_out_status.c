
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int time_t ;
struct Output {int dummy; } ;
typedef int FILE ;


 int UNUSEDPARM (unsigned int) ;

__attribute__((used)) static void
cert_out_status(struct Output *out, FILE *fp, time_t timestamp, int status,
                unsigned ip, unsigned ip_proto, unsigned port, unsigned reason, unsigned ttl)
{


    UNUSEDPARM(out);
    UNUSEDPARM(fp);
    UNUSEDPARM(timestamp);
    UNUSEDPARM(status);
    UNUSEDPARM(ip);
    UNUSEDPARM(ip_proto);
    UNUSEDPARM(port);
    UNUSEDPARM(reason);
    UNUSEDPARM(ttl);
}
