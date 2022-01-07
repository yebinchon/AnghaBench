
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_ep {int fsm; } ;


 int nn_fsm_start (int *) ;

void nn_ep_start (struct nn_ep *self)
{
    nn_fsm_start (&self->fsm);
}
