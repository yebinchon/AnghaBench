
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_usock {int dummy; } ;
struct TYPE_2__ {int * fsm; int src; } ;
struct nn_stcp {int fsm; struct nn_usock* usock; TYPE_1__ usock_owner; } ;


 int NN_STCP_SRC_USOCK ;
 int nn_assert (int) ;
 int nn_fsm_start (int *) ;
 int nn_usock_swap_owner (struct nn_usock*,TYPE_1__*) ;

void nn_stcp_start (struct nn_stcp *self, struct nn_usock *usock)
{

    nn_assert (self->usock == ((void*)0) && self->usock_owner.fsm == ((void*)0));
    self->usock_owner.src = NN_STCP_SRC_USOCK;
    self->usock_owner.fsm = &self->fsm;
    nn_usock_swap_owner (usock, &self->usock_owner);
    self->usock = usock;


    nn_fsm_start (&self->fsm);
}
