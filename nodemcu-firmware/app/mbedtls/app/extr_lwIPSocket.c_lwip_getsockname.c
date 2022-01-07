
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int lwip_getaddrname (int,struct sockaddr*,int *,int) ;

int lwip_getsockname(int s, struct sockaddr *name, socklen_t *namelen)
{
    return lwip_getaddrname(s, name, namelen, 1);
}
