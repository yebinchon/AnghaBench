
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_lb {int priolist; } ;


 int nn_priolist_is_active (int *) ;

int nn_lb_can_send (struct nn_lb *self)
{
    return nn_priolist_is_active (&self->priolist);
}
