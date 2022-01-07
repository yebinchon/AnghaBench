
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int src; int * fsm; } ;
struct nn_sws {int instate; int outstate; int done; scalar_t__ pongs_received; scalar_t__ pings_received; scalar_t__ pongs_sent; scalar_t__ pings_sent; scalar_t__ utf8_code_pt_fragment_len; int utf8_code_pt_fragment; scalar_t__ continuing; int outmsg; int inmsg_array; int pipebase; TYPE_1__ usock_owner; int * usock; int fsm; int handshaker; int state; } ;
struct nn_fsm {int dummy; } ;
struct nn_ep {int dummy; } ;


 int NN_SWS_SRC_HANDSHAKE ;
 int NN_SWS_STATE_IDLE ;
 int NN_SWS_UTF8_MAX_CODEPOINT_LEN ;
 int memset (int ,int ,int ) ;
 int nn_fsm_event_init (int *) ;
 int nn_fsm_init (int *,int ,int ,int,struct nn_sws*,struct nn_fsm*) ;
 int nn_list_init (int *) ;
 int nn_msg_init (int *,int ) ;
 int nn_pipebase_init (int *,int *,struct nn_ep*) ;
 int nn_sws_handler ;
 int nn_sws_pipebase_vfptr ;
 int nn_sws_shutdown ;
 int nn_ws_handshake_init (int *,int ,int *) ;

void nn_sws_init (struct nn_sws *self, int src,
    struct nn_ep *ep, struct nn_fsm *owner)
{
    nn_fsm_init (&self->fsm, nn_sws_handler, nn_sws_shutdown,
        src, self, owner);
    self->state = NN_SWS_STATE_IDLE;
    nn_ws_handshake_init (&self->handshaker,
        NN_SWS_SRC_HANDSHAKE, &self->fsm);
    self->usock = ((void*)0);
    self->usock_owner.src = -1;
    self->usock_owner.fsm = ((void*)0);
    nn_pipebase_init (&self->pipebase, &nn_sws_pipebase_vfptr, ep);
    self->instate = -1;
    nn_list_init (&self->inmsg_array);
    self->outstate = -1;
    nn_msg_init (&self->outmsg, 0);

    self->continuing = 0;

    memset (self->utf8_code_pt_fragment, 0,
        NN_SWS_UTF8_MAX_CODEPOINT_LEN);
    self->utf8_code_pt_fragment_len = 0;

    self->pings_sent = 0;
    self->pongs_sent = 0;
    self->pings_received = 0;
    self->pongs_received = 0;

    nn_fsm_event_init (&self->done);
}
