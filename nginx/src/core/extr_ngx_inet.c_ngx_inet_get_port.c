
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_port; } ;
struct sockaddr_in {int sin_port; } ;
struct sockaddr {int sa_family; } ;
typedef int in_port_t ;




 int ntohs (int ) ;

in_port_t
ngx_inet_get_port(struct sockaddr *sa)
{
    struct sockaddr_in *sin;




    switch (sa->sa_family) {
    default:
        sin = (struct sockaddr_in *) sa;
        return ntohs(sin->sin_port);
    }
}
