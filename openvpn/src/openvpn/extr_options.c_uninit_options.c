
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int gc; scalar_t__ gc_owned; } ;


 int gc_free (int *) ;

void
uninit_options(struct options *o)
{
    if (o->gc_owned)
    {
        gc_free(&o->gc);
    }
}
