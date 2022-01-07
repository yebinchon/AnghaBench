
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route_option_list {int flags; struct route_option* routes; } ;
struct route_option {struct route_option* next; } ;


 int RG_ENABLE ;
 int RG_LOCAL ;
 int msg (int,char*,int) ;
 int print_route_option (struct route_option*,int) ;

void
print_route_options(const struct route_option_list *rol,
                    int level)
{
    struct route_option *ro;
    if (rol->flags & RG_ENABLE)
    {
        msg(level, "  [redirect_default_gateway local=%d]",
            (rol->flags & RG_LOCAL) != 0);
    }
    for (ro = rol->routes; ro; ro = ro->next)
    {
        print_route_option(ro, level);
    }
}
