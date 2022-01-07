
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sinproc {int fsm; int event_connect; struct nn_sinproc* peer; } ;


 int NN_SINPROC_ACTION_READY ;
 int NN_SINPROC_READY ;
 int NN_SINPROC_SRC_PEER ;
 int nn_assert (int) ;
 int nn_fsm_action (int *,int ) ;
 int nn_fsm_raiseto (int *,int *,int *,int ,int ,struct nn_sinproc*) ;
 int nn_fsm_start (int *) ;

void nn_sinproc_accept (struct nn_sinproc *self, struct nn_sinproc *peer)
{
    nn_assert (!self->peer);
    self->peer = peer;


    nn_fsm_raiseto (&self->fsm, &peer->fsm, &self->event_connect,
        NN_SINPROC_SRC_PEER, NN_SINPROC_READY, self);


    nn_fsm_start (&self->fsm);
    nn_fsm_action (&self->fsm, NN_SINPROC_ACTION_READY);
}
