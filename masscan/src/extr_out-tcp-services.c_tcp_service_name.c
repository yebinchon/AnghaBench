
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_name; } ;
typedef int buf ;


 struct servent* getservbyport (int ,char*) ;
 int getservbyport_r (int ,char*,struct servent*,char*,int,struct servent**) ;
 int htons (unsigned short) ;
 char* strdup (int ) ;
 char const** tcp_services ;

const char *
tcp_service_name(int port)
{
    if (tcp_services[port])
        return tcp_services[port];


    int r;
    struct servent result_buf;
    struct servent *result;
    char buf[2048];

    r = getservbyport_r(htons(port), "tcp", &result_buf,buf, sizeof(buf), &result);


    if (r != 0 || result == ((void*)0))
        return "unknown";

    return tcp_services[port] = strdup(result_buf.s_name);
}
