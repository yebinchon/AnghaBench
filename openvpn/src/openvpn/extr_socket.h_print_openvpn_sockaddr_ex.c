
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa; } ;
struct openvpn_sockaddr {TYPE_1__ addr; } ;
struct gc_arena {int dummy; } ;


 char const* print_sockaddr_ex (int *,char const*,unsigned int const,struct gc_arena*) ;

__attribute__((used)) static inline
const char *
print_openvpn_sockaddr_ex(const struct openvpn_sockaddr *addr,
                          const char *separator,
                          const unsigned int flags,
                          struct gc_arena *gc)
{
    return print_sockaddr_ex(&addr->addr.sa, separator, flags, gc);
}
