
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route_ipv6_list {int gc; } ;


 int CLEAR (struct route_ipv6_list) ;
 int gc_free (int *) ;

__attribute__((used)) static void
clear_route_ipv6_list(struct route_ipv6_list *rl6)
{
    gc_free(&rl6->gc);
    CLEAR(*rl6);
}
