
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int sin6_addr; } ;
struct TYPE_7__ {int s_addr; } ;
struct TYPE_8__ {TYPE_2__ sin_addr; } ;
struct TYPE_6__ {int sa_family; } ;
struct TYPE_10__ {TYPE_4__ in6; TYPE_3__ in4; TYPE_1__ sa; } ;
struct openvpn_sockaddr {TYPE_5__ addr; } ;
struct in6_addr {int dummy; } ;




 int memset (int *,int ,int) ;

__attribute__((used)) static inline void
addr_zero_host(struct openvpn_sockaddr *addr)
{
    switch (addr->addr.sa.sa_family)
    {
        case 129:
            addr->addr.in4.sin_addr.s_addr = 0;
            break;

        case 128:
            memset(&addr->addr.in6.sin6_addr, 0, sizeof(struct in6_addr));
            break;
    }
}
