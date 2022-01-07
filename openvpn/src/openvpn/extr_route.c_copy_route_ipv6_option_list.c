
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route_ipv6_option_list {struct gc_arena* gc; } ;
struct gc_arena {int dummy; } ;



void
copy_route_ipv6_option_list(struct route_ipv6_option_list *dest,
                            const struct route_ipv6_option_list *src,
                            struct gc_arena *a)
{
    *dest = *src;
    dest->gc = a;
}
