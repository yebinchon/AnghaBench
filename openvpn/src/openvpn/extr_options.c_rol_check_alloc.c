
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int gc; scalar_t__ routes; } ;


 scalar_t__ new_route_option_list (int *) ;

void
rol_check_alloc(struct options *options)
{
    if (!options->routes)
    {
        options->routes = new_route_option_list(&options->gc);
    }
}
