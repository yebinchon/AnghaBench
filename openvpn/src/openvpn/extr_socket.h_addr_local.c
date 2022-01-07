
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;




 int IN6_IS_ADDR_LOOPBACK (int *) ;
 int INADDR_LOOPBACK ;
 int htonl (int ) ;

__attribute__((used)) static inline bool
addr_local(const struct sockaddr *addr)
{
    if (!addr)
    {
        return 0;
    }
    switch (addr->sa_family)
    {
        case 129:
            return ((const struct sockaddr_in *)addr)->sin_addr.s_addr == htonl(INADDR_LOOPBACK);

        case 128:
            return IN6_IS_ADDR_LOOPBACK(&((const struct sockaddr_in6 *)addr)->sin6_addr);

        default:
            return 0;
    }
}
