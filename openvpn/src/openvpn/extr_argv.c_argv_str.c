
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
struct argv {scalar_t__ argv; } ;


 char const* print_argv (char const**,struct gc_arena*,unsigned int const) ;

const char *
argv_str(const struct argv *a, struct gc_arena *gc, const unsigned int flags)
{
    if (a->argv)
    {
        return print_argv((const char **)a->argv, gc, flags);
    }
    else
    {
        return "";
    }
}
