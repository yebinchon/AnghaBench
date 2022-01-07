
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct route_ipv4 {int flags; } ;
struct gc_arena {int dummy; } ;


 int RT_DEFINED ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int,char*,int ) ;
 int route_string (struct route_ipv4 const*,struct gc_arena*) ;

__attribute__((used)) static void
print_route(const struct route_ipv4 *r, int level)
{
    struct gc_arena gc = gc_new();
    if (r->flags & RT_DEFINED)
    {
        msg(level, "%s", route_string(r, &gc));
    }
    gc_free(&gc);
}
