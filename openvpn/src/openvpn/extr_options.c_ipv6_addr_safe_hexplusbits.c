
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;


 int M_WARN ;
 int get_ipv6_addr (char const*,struct in6_addr*,unsigned int*,int ) ;

__attribute__((used)) static bool
ipv6_addr_safe_hexplusbits( const char *ipv6_prefix_spec )
{
    struct in6_addr t_addr;
    unsigned int t_bits;

    return get_ipv6_addr( ipv6_prefix_spec, &t_addr, &t_bits, M_WARN );
}
