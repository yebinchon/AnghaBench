
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_timer {int timeout; int fsm; } ;


 int nn_assert (int) ;
 int nn_fsm_start (int *) ;

void nn_timer_start (struct nn_timer *self, int timeout)
{

    nn_assert (timeout >= 0);

    self->timeout = timeout;
    nn_fsm_start (&self->fsm);
}
