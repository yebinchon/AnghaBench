
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_port; } ;


 int atoi (char const*) ;
 struct servent* getservbyname (char const*,int *) ;

__attribute__((used)) static int
port_from_servname(const char *servname)
{
    int port = 0;
    port = atoi(servname);
    if (port >0 && port < 65536)
    {
        return port;
    }

    struct servent *service;
    service = getservbyname(servname, ((void*)0));
    if (service)
    {
        return service->s_port;
    }

    return 0;
}
