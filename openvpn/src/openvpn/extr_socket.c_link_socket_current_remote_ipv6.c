
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct sockaddr_in6 {struct in6_addr const sin6_addr; } ;
struct link_socket_info {struct link_socket_addr* lsa; } ;
struct TYPE_11__ {struct in6_addr const sin6_addr; } ;
struct TYPE_8__ {scalar_t__ sa_family; } ;
struct TYPE_9__ {TYPE_5__ in6; TYPE_2__ sa; } ;
struct TYPE_10__ {TYPE_3__ addr; } ;
struct TYPE_12__ {TYPE_4__ dest; } ;
struct link_socket_addr {TYPE_1__* current_remote; TYPE_6__ actual; } ;
struct TYPE_7__ {scalar_t__ ai_addr; } ;


 scalar_t__ AF_INET6 ;
 scalar_t__ link_socket_actual_defined (TYPE_6__*) ;

const struct in6_addr *
link_socket_current_remote_ipv6(const struct link_socket_info *info)
{
    const struct link_socket_addr *lsa = info->lsa;







    if (lsa->actual.dest.addr.sa.sa_family != AF_INET6)
    {
        return ((void*)0);
    }

    if (link_socket_actual_defined(&lsa->actual))
    {
        return &(lsa->actual.dest.addr.in6.sin6_addr);
    }
    else if (lsa->current_remote)
    {
        return &(((struct sockaddr_in6 *)lsa->current_remote->ai_addr)->sin6_addr);
    }
    else
    {
        return ((void*)0);
    }
}
