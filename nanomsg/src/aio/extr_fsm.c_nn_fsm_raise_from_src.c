
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm_event {int src; int type; int srcptr; struct nn_fsm* fsm; } ;
struct nn_fsm {int ctx; int srcptr; } ;


 int nn_ctx_raise (int ,struct nn_fsm_event*) ;

void nn_fsm_raise_from_src (struct nn_fsm *self, struct nn_fsm_event *event,
    int src, int type)
{
    event->fsm = self;
    event->src = src;
    event->srcptr = self->srcptr;
    event->type = type;
    nn_ctx_raise (self->ctx, event);
}
