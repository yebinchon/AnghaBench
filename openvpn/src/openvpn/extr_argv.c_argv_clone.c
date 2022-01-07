
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv {size_t argc; int * argv; } ;


 int argv_append (struct argv*,int *) ;
 int argv_init (struct argv*) ;
 int * string_alloc (int ,int *) ;

__attribute__((used)) static struct argv
argv_clone(const struct argv *a, const size_t headroom)
{
    struct argv r;
    size_t i;

    argv_init(&r);
    for (i = 0; i < headroom; ++i)
    {
        argv_append(&r, ((void*)0));
    }
    if (a)
    {
        for (i = 0; i < a->argc; ++i)
        {
            argv_append(&r, string_alloc(a->argv[i], ((void*)0)));
        }
    }
    return r;
}
