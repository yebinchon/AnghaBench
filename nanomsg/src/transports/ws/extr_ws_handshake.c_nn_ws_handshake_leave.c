
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int src; int * fsm; } ;
struct nn_ws_handshake {int done; int fsm; int state; TYPE_1__ usock_owner; int * usock; } ;


 int NN_WS_HANDSHAKE_STATE_DONE ;
 int nn_fsm_raise (int *,int *,int) ;
 int nn_usock_swap_owner (int *,TYPE_1__*) ;

__attribute__((used)) static void nn_ws_handshake_leave (struct nn_ws_handshake *self, int rc)
{
    nn_usock_swap_owner (self->usock, &self->usock_owner);
    self->usock = ((void*)0);
    self->usock_owner.src = -1;
    self->usock_owner.fsm = ((void*)0);
    self->state = NN_WS_HANDSHAKE_STATE_DONE;
    nn_fsm_raise (&self->fsm, &self->done, rc);
}
