
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int gc; scalar_t__ routes_ipv6; } ;


 scalar_t__ new_route_ipv6_option_list (int *) ;

__attribute__((used)) static void
rol6_check_alloc(struct options *options)
{
    if (!options->routes_ipv6)
    {
        options->routes_ipv6 = new_route_ipv6_option_list(&options->gc);
    }
}
