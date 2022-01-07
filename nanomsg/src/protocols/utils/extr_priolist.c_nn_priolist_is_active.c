
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_priolist {int current; } ;



int nn_priolist_is_active (struct nn_priolist *self)
{
    return self->current == -1 ? 0 : 1;
}
