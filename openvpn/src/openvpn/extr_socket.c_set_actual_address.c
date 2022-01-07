
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct TYPE_4__ {struct sockaddr_in6 in6; struct sockaddr_in in4; } ;
struct TYPE_3__ {TYPE_2__ addr; } ;
struct link_socket_actual {TYPE_1__ dest; } ;
struct addrinfo {scalar_t__ ai_family; scalar_t__ ai_addr; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int ASSERT (struct addrinfo*) ;
 int CLEAR (struct link_socket_actual) ;

void
set_actual_address(struct link_socket_actual *actual, struct addrinfo *ai)
{
    CLEAR(*actual);
    ASSERT(ai);

    if (ai->ai_family == AF_INET)
    {
        actual->dest.addr.in4 =
            *((struct sockaddr_in *) ai->ai_addr);
    }
    else if (ai->ai_family == AF_INET6)
    {
        actual->dest.addr.in6 =
            *((struct sockaddr_in6 *) ai->ai_addr);
    }
    else
    {
        ASSERT(0);
    }

}
