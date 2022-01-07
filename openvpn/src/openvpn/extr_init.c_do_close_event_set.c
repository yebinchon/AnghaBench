
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int event_set_owned; int * event_set; } ;
struct context {TYPE_1__ c2; } ;


 int event_free (int *) ;

__attribute__((used)) static void
do_close_event_set(struct context *c)
{
    if (c->c2.event_set && c->c2.event_set_owned)
    {
        event_free(c->c2.event_set);
        c->c2.event_set = ((void*)0);
        c->c2.event_set_owned = 0;
    }
}
