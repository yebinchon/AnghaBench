
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_priolist {TYPE_1__* slots; } ;
struct TYPE_2__ {int pipes; } ;


 int NN_PRIOLIST_SLOTS ;
 int nn_list_term (int *) ;

void nn_priolist_term (struct nn_priolist *self)
{
    int i;

    for (i = 0; i != NN_PRIOLIST_SLOTS; ++i)
        nn_list_term (&self->slots [i].pipes);
}
