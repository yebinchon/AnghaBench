
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm {int stopped; } ;


 int nn_assert (int ) ;
 int nn_fsm_event_term (int *) ;
 int nn_fsm_isidle (struct nn_fsm*) ;

void nn_fsm_term (struct nn_fsm *self)
{
    nn_assert (nn_fsm_isidle (self));
    nn_fsm_event_term (&self->stopped);
}
