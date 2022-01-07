
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_usock {int dummy; } ;
struct TYPE_2__ {int * fsm; int src; } ;
struct nn_atcp {int fsm; TYPE_1__ listener_owner; struct nn_usock* listener; } ;


 int NN_ATCP_SRC_LISTENER ;
 int NN_ATCP_STATE_IDLE ;
 int nn_assert_state (struct nn_atcp*,int ) ;
 int nn_fsm_start (int *) ;
 int nn_usock_swap_owner (struct nn_usock*,TYPE_1__*) ;

void nn_atcp_start (struct nn_atcp *self, struct nn_usock *listener)
{
    nn_assert_state (self, NN_ATCP_STATE_IDLE);


    self->listener = listener;
    self->listener_owner.src = NN_ATCP_SRC_LISTENER;
    self->listener_owner.fsm = &self->fsm;
    nn_usock_swap_owner (listener, &self->listener_owner);


    nn_fsm_start (&self->fsm);
}
