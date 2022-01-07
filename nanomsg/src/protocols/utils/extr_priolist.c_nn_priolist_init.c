
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_priolist {int current; TYPE_1__* slots; } ;
struct TYPE_2__ {int * current; int pipes; } ;


 int NN_PRIOLIST_SLOTS ;
 int nn_list_init (int *) ;

void nn_priolist_init (struct nn_priolist *self)
{
    int i;

    for (i = 0; i != NN_PRIOLIST_SLOTS; ++i) {
        nn_list_init (&self->slots [i].pipes);
        self->slots [i].current = ((void*)0);
    }
    self->current = -1;
}
