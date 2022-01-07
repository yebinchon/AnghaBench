
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route_option {int metric; int gateway; int netmask; int network; } ;


 int msg (int,char*,int ,int ,int ,int ) ;
 int show_opt (int ) ;

__attribute__((used)) static void
print_route_option(const struct route_option *ro, int level)
{
    msg(level, "  route %s/%s/%s/%s",
        show_opt(ro->network),
        show_opt(ro->netmask),
        show_opt(ro->gateway),
        show_opt(ro->metric));
}
