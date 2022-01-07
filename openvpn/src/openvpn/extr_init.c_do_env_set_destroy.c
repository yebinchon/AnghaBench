
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int es_owned; int * es; } ;
struct context {TYPE_1__ c2; } ;


 int env_set_destroy (int *) ;

__attribute__((used)) static void
do_env_set_destroy(struct context *c)
{
    if (c->c2.es && c->c2.es_owned)
    {
        env_set_destroy(c->c2.es);
        c->c2.es = ((void*)0);
        c->c2.es_owned = 0;
    }
}
