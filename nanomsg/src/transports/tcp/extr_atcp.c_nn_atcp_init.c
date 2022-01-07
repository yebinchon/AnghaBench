
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_fsm {int dummy; } ;
struct nn_ep {int dummy; } ;
struct TYPE_2__ {int src; int * fsm; } ;
struct nn_atcp {int item; int done; int accepted; int fsm; int stcp; TYPE_1__ listener_owner; int * listener; int usock; struct nn_ep* ep; int state; } ;


 int NN_ATCP_SRC_STCP ;
 int NN_ATCP_SRC_USOCK ;
 int NN_ATCP_STATE_IDLE ;
 int nn_atcp_handler ;
 int nn_atcp_shutdown ;
 int nn_fsm_event_init (int *) ;
 int nn_fsm_init (int *,int ,int ,int,struct nn_atcp*,struct nn_fsm*) ;
 int nn_list_item_init (int *) ;
 int nn_stcp_init (int *,int ,struct nn_ep*,int *) ;
 int nn_usock_init (int *,int ,int *) ;

void nn_atcp_init (struct nn_atcp *self, int src,
    struct nn_ep *ep, struct nn_fsm *owner)
{
    nn_fsm_init (&self->fsm, nn_atcp_handler, nn_atcp_shutdown,
        src, self, owner);
    self->state = NN_ATCP_STATE_IDLE;
    self->ep = ep;
    nn_usock_init (&self->usock, NN_ATCP_SRC_USOCK, &self->fsm);
    self->listener = ((void*)0);
    self->listener_owner.src = -1;
    self->listener_owner.fsm = ((void*)0);
    nn_stcp_init (&self->stcp, NN_ATCP_SRC_STCP, ep, &self->fsm);
    nn_fsm_event_init (&self->accepted);
    nn_fsm_event_init (&self->done);
    nn_list_item_init (&self->item);
}
