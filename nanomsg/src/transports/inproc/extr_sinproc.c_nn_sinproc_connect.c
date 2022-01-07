
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sinproc {int event_connect; int fsm; } ;
struct nn_fsm {int dummy; } ;


 int NN_SINPROC_CONNECT ;
 int NN_SINPROC_SRC_PEER ;
 int nn_fsm_raiseto (int *,struct nn_fsm*,int *,int ,int ,struct nn_sinproc*) ;
 int nn_fsm_start (int *) ;

void nn_sinproc_connect (struct nn_sinproc *self, struct nn_fsm *peer)
{
    nn_fsm_start (&self->fsm);


    nn_fsm_raiseto (&self->fsm, peer, &self->event_connect,
        NN_SINPROC_SRC_PEER, NN_SINPROC_CONNECT, self);
}
