
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct gc_arena {int dummy; } ;


 int PS_SHOW_PORT ;
 char const* print_sockaddr_ex (struct sockaddr const*,char*,int ,struct gc_arena*) ;

__attribute__((used)) static inline
const char *
print_sockaddr(const struct sockaddr *addr,
               struct gc_arena *gc)
{
    return print_sockaddr_ex(addr, ":", PS_SHOW_PORT, gc);
}
