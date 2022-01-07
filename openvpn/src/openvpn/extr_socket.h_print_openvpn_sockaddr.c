
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa; } ;
struct openvpn_sockaddr {TYPE_1__ addr; } ;
struct gc_arena {int dummy; } ;


 int PS_SHOW_PORT ;
 char const* print_sockaddr_ex (int *,char*,int ,struct gc_arena*) ;

__attribute__((used)) static inline
const char *
print_openvpn_sockaddr(const struct openvpn_sockaddr *addr,
                       struct gc_arena *gc)
{
    return print_sockaddr_ex(&addr->addr.sa, ":", PS_SHOW_PORT, gc);
}
