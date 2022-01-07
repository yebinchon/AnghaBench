
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sa_inet ;
struct TYPE_10__ {int ipv6; int ipv4; } ;
typedef TYPE_3__ inet_address_t ;
struct TYPE_9__ {int sin6_addr; } ;
struct TYPE_8__ {int sin_addr; } ;
struct TYPE_11__ {short si_family; TYPE_2__ Ipv6; TYPE_1__ Ipv4; } ;
typedef TYPE_4__ SOCKADDR_INET ;


 short AF_INET ;
 short AF_INET6 ;
 int ZeroMemory (TYPE_4__*,int) ;

__attribute__((used)) static SOCKADDR_INET
sockaddr_inet(short family, inet_address_t *addr)
{
    SOCKADDR_INET sa_inet;
    ZeroMemory(&sa_inet, sizeof(sa_inet));
    sa_inet.si_family = family;
    if (family == AF_INET)
    {
        sa_inet.Ipv4.sin_addr = addr->ipv4;
    }
    else if (family == AF_INET6)
    {
        sa_inet.Ipv6.sin6_addr = addr->ipv6;
    }
    return sa_inet;
}
