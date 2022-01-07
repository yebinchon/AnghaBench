
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
typedef int const in_addr_t ;


 int M_WARN ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 scalar_t__ get_default_gateway (int const*,int const*) ;
 int msg (int ,char*,char const*,int ,int ,int ,int ) ;
 int print_in_addr_t (int const,int ,struct gc_arena*) ;

void
check_subnet_conflict(const in_addr_t ip,
                      const in_addr_t netmask,
                      const char *prefix)
{
}
