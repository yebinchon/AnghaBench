
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct argv {int dummy; } ;


 int argv_str (struct argv const*,struct gc_arena*,int ) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int const,char*,int ) ;

void
argv_msg(const int msglev, const struct argv *a)
{
    struct gc_arena gc = gc_new();
    msg(msglev, "%s", argv_str(a, &gc, 0));
    gc_free(&gc);
}
