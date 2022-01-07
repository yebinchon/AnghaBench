
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int src; int * fsm; } ;
struct nn_streamhdr {int * pipebase; TYPE_1__ usock_owner; int * usock; int done; int fsm; int timer; int state; } ;
struct nn_fsm {int dummy; } ;


 int NN_STREAMHDR_SRC_TIMER ;
 int NN_STREAMHDR_STATE_IDLE ;
 int nn_fsm_event_init (int *) ;
 int nn_fsm_init (int *,int ,int ,int,struct nn_streamhdr*,struct nn_fsm*) ;
 int nn_streamhdr_handler ;
 int nn_streamhdr_shutdown ;
 int nn_timer_init (int *,int ,int *) ;

void nn_streamhdr_init (struct nn_streamhdr *self, int src,
    struct nn_fsm *owner)
{
    nn_fsm_init (&self->fsm, nn_streamhdr_handler, nn_streamhdr_shutdown,
        src, self, owner);
    self->state = NN_STREAMHDR_STATE_IDLE;
    nn_timer_init (&self->timer, NN_STREAMHDR_SRC_TIMER, &self->fsm);
    nn_fsm_event_init (&self->done);

    self->usock = ((void*)0);
    self->usock_owner.src = -1;
    self->usock_owner.fsm = ((void*)0);
    self->pipebase = ((void*)0);
}
