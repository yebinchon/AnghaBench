
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_addr_t ;


 int const IPV4_NETMASK_HOST ;

__attribute__((used)) static inline in_addr_t
netbits_to_netmask(const int netbits)
{
    const int addrlen = sizeof(in_addr_t) * 8;
    in_addr_t mask = 0;
    if (netbits > 0 && netbits <= addrlen)
    {
        mask = IPV4_NETMASK_HOST << (addrlen-netbits);
    }
    return mask;
}
