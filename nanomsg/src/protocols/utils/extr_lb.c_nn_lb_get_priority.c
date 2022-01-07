
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_lb {int priolist; } ;


 int nn_priolist_get_priority (int *) ;

int nn_lb_get_priority (struct nn_lb *self)
{
    return nn_priolist_get_priority (&self->priolist);
}
