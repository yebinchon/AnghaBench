
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int src; int * fsm; } ;
struct nn_ws_handshake {int * pipebase; TYPE_1__ usock_owner; int * usock; int timeout; int done; int fsm; int timer; int state; } ;
struct nn_fsm {int dummy; } ;


 int NN_WS_HANDSHAKE_SRC_TIMER ;
 int NN_WS_HANDSHAKE_STATE_IDLE ;
 int NN_WS_HANDSHAKE_TIMEOUT ;
 int nn_fsm_event_init (int *) ;
 int nn_fsm_init (int *,int ,int ,int,struct nn_ws_handshake*,struct nn_fsm*) ;
 int nn_timer_init (int *,int ,int *) ;
 int nn_ws_handshake_handler ;
 int nn_ws_handshake_shutdown ;

void nn_ws_handshake_init (struct nn_ws_handshake *self, int src,
    struct nn_fsm *owner)
{
    nn_fsm_init (&self->fsm, nn_ws_handshake_handler, nn_ws_handshake_shutdown,
        src, self, owner);
    self->state = NN_WS_HANDSHAKE_STATE_IDLE;
    nn_timer_init (&self->timer, NN_WS_HANDSHAKE_SRC_TIMER, &self->fsm);
    nn_fsm_event_init (&self->done);
    self->timeout = NN_WS_HANDSHAKE_TIMEOUT;
    self->usock = ((void*)0);
    self->usock_owner.src = -1;
    self->usock_owner.fsm = ((void*)0);
    self->pipebase = ((void*)0);
}
