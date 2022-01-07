
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm {int src; int stopped; int ctx; struct nn_fsm* owner; void* srcptr; int state; void* shutdown_fn; void* fn; } ;
typedef void* nn_fsm_fn ;


 int NN_FSM_STATE_IDLE ;
 int nn_fsm_event_init (int *) ;

void nn_fsm_init (struct nn_fsm *self, nn_fsm_fn fn,
    nn_fsm_fn shutdown_fn, int src, void *srcptr, struct nn_fsm *owner)
{
    self->fn = fn;
    self->shutdown_fn = shutdown_fn;
    self->state = NN_FSM_STATE_IDLE;
    self->src = src;
    self->srcptr = srcptr;
    self->owner = owner;
    self->ctx = owner->ctx;
    nn_fsm_event_init (&self->stopped);
}
