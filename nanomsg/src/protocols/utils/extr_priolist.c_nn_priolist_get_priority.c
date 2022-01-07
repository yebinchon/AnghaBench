
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_priolist {int current; } ;



int nn_priolist_get_priority (struct nn_priolist *self) {
    return self->current;
}
