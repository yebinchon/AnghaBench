
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct in6_addr {scalar_t__* s6_addr; } ;


 scalar_t__ UINT8_MAX ;

struct in6_addr
add_in6_addr( struct in6_addr base, uint32_t add )
{
    int i;

    for (i = 15; i>=0 && add > 0; i--)
    {
        register int carry;
        register uint32_t h;

        h = (unsigned char) base.s6_addr[i];
        base.s6_addr[i] = (h+add) & UINT8_MAX;




        carry = ((h & 0xff) + (add & 0xff)) >> 8;
        add = (add>>8) + carry;
    }
    return base;
}
