
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm_event {int type; int srcptr; int src; int fsm; } ;
struct nn_fsm {int ctx; int srcptr; int src; int owner; } ;


 int nn_ctx_raise (int ,struct nn_fsm_event*) ;

void nn_fsm_raise (struct nn_fsm *self, struct nn_fsm_event *event, int type)
{
    event->fsm = self->owner;
    event->src = self->src;
    event->srcptr = self->srcptr;
    event->type = type;
    nn_ctx_raise (self->ctx, event);
}
