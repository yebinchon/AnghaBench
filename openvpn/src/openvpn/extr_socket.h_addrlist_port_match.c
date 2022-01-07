
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


struct sockaddr_in6 {int sin6_port; int sin6_addr; } ;
struct TYPE_9__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_3__ sin_addr; } ;
struct TYPE_11__ {int sin6_port; int sin6_addr; } ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_10__ {int sin_port; TYPE_2__ sin_addr; } ;
struct TYPE_7__ {int sa_family; } ;
struct TYPE_12__ {TYPE_5__ in6; TYPE_4__ in4; TYPE_1__ sa; } ;
struct openvpn_sockaddr {TYPE_6__ addr; } ;
struct addrinfo {int const ai_family; scalar_t__ ai_addr; struct addrinfo* ai_next; } ;




 int ASSERT (int ) ;
 int IN6_ARE_ADDR_EQUAL (int *,int *) ;

__attribute__((used)) static inline bool
addrlist_port_match(const struct openvpn_sockaddr *a1, const struct addrinfo *a2)
{
    const struct addrinfo *curele;
    for (curele = a2; curele; curele = curele->ai_next)
    {
        switch (a1->addr.sa.sa_family)
        {
            case 129:
                if (curele->ai_family == 129
                    && a1->addr.in4.sin_addr.s_addr == ((struct sockaddr_in *)curele->ai_addr)->sin_addr.s_addr
                    && a1->addr.in4.sin_port == ((struct sockaddr_in *)curele->ai_addr)->sin_port)
                {
                    return 1;
                }
                break;

            case 128:
                if (curele->ai_family == 128
                    && IN6_ARE_ADDR_EQUAL(&a1->addr.in6.sin6_addr, &((struct sockaddr_in6 *) curele->ai_addr)->sin6_addr)
                    && a1->addr.in6.sin6_port == ((struct sockaddr_in6 *) curele->ai_addr)->sin6_port)
                {
                    return 1;
                }
                break;

            default:
                ASSERT(0);
        }
    }
    return 0;
}
