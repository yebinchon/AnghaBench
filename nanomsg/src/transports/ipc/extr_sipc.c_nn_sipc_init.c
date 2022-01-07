
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int src; int * fsm; } ;
struct nn_sipc {int instate; int outstate; int done; int outmsg; int inmsg; int pipebase; TYPE_1__ usock_owner; int * usock; int fsm; int streamhdr; int state; } ;
struct nn_fsm {int dummy; } ;
struct nn_ep {int dummy; } ;


 int NN_SIPC_SRC_STREAMHDR ;
 int NN_SIPC_STATE_IDLE ;
 int nn_fsm_event_init (int *) ;
 int nn_fsm_init (int *,int ,int ,int,struct nn_sipc*,struct nn_fsm*) ;
 int nn_msg_init (int *,int ) ;
 int nn_pipebase_init (int *,int *,struct nn_ep*) ;
 int nn_sipc_handler ;
 int nn_sipc_pipebase_vfptr ;
 int nn_sipc_shutdown ;
 int nn_streamhdr_init (int *,int ,int *) ;

void nn_sipc_init (struct nn_sipc *self, int src,
    struct nn_ep *ep, struct nn_fsm *owner)
{
    nn_fsm_init (&self->fsm, nn_sipc_handler, nn_sipc_shutdown,
        src, self, owner);
    self->state = NN_SIPC_STATE_IDLE;
    nn_streamhdr_init (&self->streamhdr, NN_SIPC_SRC_STREAMHDR, &self->fsm);
    self->usock = ((void*)0);
    self->usock_owner.src = -1;
    self->usock_owner.fsm = ((void*)0);
    nn_pipebase_init (&self->pipebase, &nn_sipc_pipebase_vfptr, ep);
    self->instate = -1;
    nn_msg_init (&self->inmsg, 0);
    self->outstate = -1;
    nn_msg_init (&self->outmsg, 0);
    nn_fsm_event_init (&self->done);
}
