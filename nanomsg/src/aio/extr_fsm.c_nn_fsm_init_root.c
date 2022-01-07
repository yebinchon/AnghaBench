
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm {int src; int stopped; struct nn_ctx* ctx; int * owner; int * srcptr; int state; void* shutdown_fn; void* fn; } ;
struct nn_ctx {int dummy; } ;
typedef void* nn_fsm_fn ;


 int NN_FSM_STATE_IDLE ;
 int nn_fsm_event_init (int *) ;

void nn_fsm_init_root (struct nn_fsm *self, nn_fsm_fn fn,
    nn_fsm_fn shutdown_fn, struct nn_ctx *ctx)
{
    self->fn = fn;
    self->shutdown_fn = shutdown_fn;
    self->state = NN_FSM_STATE_IDLE;
    self->src = -1;
    self->srcptr = ((void*)0);
    self->owner = ((void*)0);
    self->ctx = ctx;
    nn_fsm_event_init (&self->stopped);
}
