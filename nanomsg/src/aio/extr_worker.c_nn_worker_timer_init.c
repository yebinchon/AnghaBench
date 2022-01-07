
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_worker_timer {int hndl; struct nn_fsm* owner; } ;
struct nn_fsm {int dummy; } ;


 int nn_timerset_hndl_init (int *) ;

void nn_worker_timer_init (struct nn_worker_timer *self, struct nn_fsm *owner)
{
    self->owner = owner;
    nn_timerset_hndl_init (&self->hndl);
}
