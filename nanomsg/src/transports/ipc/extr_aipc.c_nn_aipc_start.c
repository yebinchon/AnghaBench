
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nn_usock {int dummy; } ;
struct TYPE_3__ {int inbuffersz; int outbuffersz; int sec_attr; } ;
struct TYPE_4__ {int * fsm; int src; } ;
struct nn_aipc {int fsm; TYPE_1__ usock; int ep; TYPE_2__ listener_owner; struct nn_usock* listener; } ;


 int NN_AIPC_SRC_LISTENER ;
 int NN_AIPC_STATE_IDLE ;
 int NN_IPC ;
 int NN_IPC_INBUFSZ ;
 int NN_IPC_OUTBUFSZ ;
 int NN_IPC_SEC_ATTR ;
 int nn_assert_state (struct nn_aipc*,int ) ;
 int nn_ep_getopt (int ,int ,int ,int *,size_t*) ;
 int nn_fsm_start (int *) ;
 int nn_usock_swap_owner (struct nn_usock*,TYPE_2__*) ;

void nn_aipc_start (struct nn_aipc *self, struct nn_usock *listener)
{



    nn_assert_state (self, NN_AIPC_STATE_IDLE);


    self->listener = listener;
    self->listener_owner.src = NN_AIPC_SRC_LISTENER;
    self->listener_owner.fsm = &self->fsm;
    nn_usock_swap_owner (listener, &self->listener_owner);
    nn_fsm_start (&self->fsm);
}
