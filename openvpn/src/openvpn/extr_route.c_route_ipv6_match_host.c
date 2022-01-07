
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int* s6_addr; } ;
struct route_ipv6 {unsigned int netbits; TYPE_1__ network; } ;
struct in6_addr {unsigned int* s6_addr; } ;



__attribute__((used)) static bool
route_ipv6_match_host( const struct route_ipv6 *r6,
                       const struct in6_addr *host )
{
    unsigned int bits = r6->netbits;
    int i;
    unsigned int mask;

    if (bits>128)
    {
        return 0;
    }

    for (i = 0; bits >= 8; i++, bits -= 8)
    {
        if (r6->network.s6_addr[i] != host->s6_addr[i])
        {
            return 0;
        }
    }

    if (bits == 0)
    {
        return 1;
    }

    mask = 0xff << (8-bits);

    if ( (r6->network.s6_addr[i] & mask) == (host->s6_addr[i] & mask ))
    {
        return 1;
    }

    return 0;
}
