
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct TYPE_5__ {TYPE_1__ sin_addr; int sin_family; } ;
struct TYPE_6__ {TYPE_2__ in4; } ;
struct openvpn_sockaddr {TYPE_3__ addr; } ;
struct env_set {int dummy; } ;
typedef scalar_t__ in_addr_t ;


 int AF_INET ;
 int CLEAR (struct openvpn_sockaddr) ;
 unsigned int const SA_SET_IF_NONZERO ;
 int htonl (scalar_t__) ;
 int setenv_sockaddr (struct env_set*,char const*,struct openvpn_sockaddr*,unsigned int const) ;

void
setenv_in_addr_t(struct env_set *es, const char *name_prefix, in_addr_t addr, const unsigned int flags)
{
    if (addr || !(flags & SA_SET_IF_NONZERO))
    {
        struct openvpn_sockaddr si;
        CLEAR(si);
        si.addr.in4.sin_family = AF_INET;
        si.addr.in4.sin_addr.s_addr = htonl(addr);
        setenv_sockaddr(es, name_prefix, &si, flags);
    }
}
