
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route_list {struct route_ipv4* routes; } ;
struct route_ipv4 {struct route_ipv4* next; } ;


 int print_route (struct route_ipv4*,int) ;

void
print_routes(const struct route_list *rl, int level)
{
    struct route_ipv4 *r;
    for (r = rl->routes; r; r = r->next)
    {
        print_route(r, level);
    }
}
