
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_fsm {int dummy; } ;
struct nn_ep {int dummy; } ;
struct TYPE_2__ {int src; int * fsm; } ;
struct nn_aws {int item; int done; int accepted; int fsm; int sws; TYPE_1__ listener_owner; int * listener; int usock; struct nn_ep* ep; int state; } ;


 int NN_AWS_SRC_SWS ;
 int NN_AWS_SRC_USOCK ;
 int NN_AWS_STATE_IDLE ;
 int nn_aws_handler ;
 int nn_aws_shutdown ;
 int nn_fsm_event_init (int *) ;
 int nn_fsm_init (int *,int ,int ,int,struct nn_aws*,struct nn_fsm*) ;
 int nn_list_item_init (int *) ;
 int nn_sws_init (int *,int ,struct nn_ep*,int *) ;
 int nn_usock_init (int *,int ,int *) ;

void nn_aws_init (struct nn_aws *self, int src,
    struct nn_ep *ep, struct nn_fsm *owner)
{
    nn_fsm_init (&self->fsm, nn_aws_handler, nn_aws_shutdown,
        src, self, owner);
    self->state = NN_AWS_STATE_IDLE;
    self->ep = ep;
    nn_usock_init (&self->usock, NN_AWS_SRC_USOCK, &self->fsm);
    self->listener = ((void*)0);
    self->listener_owner.src = -1;
    self->listener_owner.fsm = ((void*)0);
    nn_sws_init (&self->sws, NN_AWS_SRC_SWS, ep, &self->fsm);
    nn_fsm_event_init (&self->accepted);
    nn_fsm_event_init (&self->done);
    nn_list_item_init (&self->item);
}
