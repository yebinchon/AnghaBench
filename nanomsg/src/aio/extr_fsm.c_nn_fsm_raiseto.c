
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm_event {int src; int type; void* srcptr; struct nn_fsm* fsm; } ;
struct nn_fsm {int ctx; } ;


 int nn_ctx_raiseto (int ,struct nn_fsm_event*) ;

void nn_fsm_raiseto (struct nn_fsm *self, struct nn_fsm *dst,
    struct nn_fsm_event *event, int src, int type, void *srcptr)
{
    event->fsm = dst;
    event->src = src;
    event->srcptr = srcptr;
    event->type = type;
    nn_ctx_raiseto (self->ctx, event);
}
