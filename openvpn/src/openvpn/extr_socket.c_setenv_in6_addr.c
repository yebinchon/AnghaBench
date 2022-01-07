
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct TYPE_3__ {struct in6_addr sin6_addr; int sin6_family; } ;
struct TYPE_4__ {TYPE_1__ in6; } ;
struct openvpn_sockaddr {TYPE_2__ addr; } ;
struct env_set {int dummy; } ;


 int AF_INET6 ;
 int CLEAR (struct openvpn_sockaddr) ;
 int IN6_IS_ADDR_UNSPECIFIED (struct in6_addr const*) ;
 unsigned int const SA_SET_IF_NONZERO ;
 int setenv_sockaddr (struct env_set*,char const*,struct openvpn_sockaddr*,unsigned int const) ;

void
setenv_in6_addr(struct env_set *es,
                const char *name_prefix,
                const struct in6_addr *addr,
                const unsigned int flags)
{
    if (!IN6_IS_ADDR_UNSPECIFIED(addr) || !(flags & SA_SET_IF_NONZERO))
    {
        struct openvpn_sockaddr si;
        CLEAR(si);
        si.addr.in6.sin6_family = AF_INET6;
        si.addr.in6.sin6_addr = *addr;
        setenv_sockaddr(es, name_prefix, &si, flags);
    }
}
