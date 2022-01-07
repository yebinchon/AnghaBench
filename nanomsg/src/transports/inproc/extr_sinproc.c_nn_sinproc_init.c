
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sinproc {int item; int event_disconnect; int event_received; int event_sent; int event_connect; int msg; int msgqueue; int pipebase; int * peer; scalar_t__ flags; int state; int fsm; } ;
struct nn_fsm {int dummy; } ;
struct nn_ep {int dummy; } ;
typedef int rcvbuf ;


 int NN_RCVBUF ;
 int NN_SINPROC_STATE_IDLE ;
 int NN_SOL_SOCKET ;
 int nn_assert (int) ;
 int nn_ep_getopt (struct nn_ep*,int ,int ,int*,size_t*) ;
 int nn_fsm_event_init (int *) ;
 int nn_fsm_init (int *,int ,int ,int,struct nn_sinproc*,struct nn_fsm*) ;
 int nn_list_item_init (int *) ;
 int nn_msg_init (int *,int ) ;
 int nn_msgqueue_init (int *,int) ;
 int nn_pipebase_init (int *,int *,struct nn_ep*) ;
 int nn_sinproc_handler ;
 int nn_sinproc_pipebase_vfptr ;
 int nn_sinproc_shutdown ;

void nn_sinproc_init (struct nn_sinproc *self, int src,
    struct nn_ep *ep, struct nn_fsm *owner)
{
    int rcvbuf;
    size_t sz;

    nn_fsm_init (&self->fsm, nn_sinproc_handler, nn_sinproc_shutdown,
        src, self, owner);
    self->state = NN_SINPROC_STATE_IDLE;
    self->flags = 0;
    self->peer = ((void*)0);
    nn_pipebase_init (&self->pipebase, &nn_sinproc_pipebase_vfptr, ep);
    sz = sizeof (rcvbuf);
    nn_ep_getopt (ep, NN_SOL_SOCKET, NN_RCVBUF, &rcvbuf, &sz);
    nn_assert (sz == sizeof (rcvbuf));
    nn_msgqueue_init (&self->msgqueue, rcvbuf);
    nn_msg_init (&self->msg, 0);
    nn_fsm_event_init (&self->event_connect);
    nn_fsm_event_init (&self->event_sent);
    nn_fsm_event_init (&self->event_received);
    nn_fsm_event_init (&self->event_disconnect);
    nn_list_item_init (&self->item);
}
