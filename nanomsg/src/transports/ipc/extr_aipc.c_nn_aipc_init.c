
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_fsm {int dummy; } ;
struct nn_ep {int dummy; } ;
struct TYPE_2__ {int src; int * fsm; } ;
struct nn_aipc {int item; int done; int accepted; int fsm; int sipc; TYPE_1__ listener_owner; int * listener; int usock; struct nn_ep* ep; int state; } ;


 int NN_AIPC_SRC_SIPC ;
 int NN_AIPC_SRC_USOCK ;
 int NN_AIPC_STATE_IDLE ;
 int nn_aipc_handler ;
 int nn_aipc_shutdown ;
 int nn_fsm_event_init (int *) ;
 int nn_fsm_init (int *,int ,int ,int,struct nn_aipc*,struct nn_fsm*) ;
 int nn_list_item_init (int *) ;
 int nn_sipc_init (int *,int ,struct nn_ep*,int *) ;
 int nn_usock_init (int *,int ,int *) ;

void nn_aipc_init (struct nn_aipc *self, int src,
    struct nn_ep *ep, struct nn_fsm *owner)
{
    nn_fsm_init (&self->fsm, nn_aipc_handler, nn_aipc_shutdown,
        src, self, owner);
    self->state = NN_AIPC_STATE_IDLE;
    self->ep = ep;
    nn_usock_init (&self->usock, NN_AIPC_SRC_USOCK, &self->fsm);
    self->listener = ((void*)0);
    self->listener_owner.src = -1;
    self->listener_owner.fsm = ((void*)0);
    nn_sipc_init (&self->sipc, NN_AIPC_SRC_SIPC, ep, &self->fsm);
    nn_fsm_event_init (&self->accepted);
    nn_fsm_event_init (&self->done);
    nn_list_item_init (&self->item);
}
