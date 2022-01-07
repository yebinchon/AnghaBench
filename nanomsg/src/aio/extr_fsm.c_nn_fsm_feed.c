
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm {scalar_t__ state; int (* shutdown_fn ) (struct nn_fsm*,int,int,void*) ;int (* fn ) (struct nn_fsm*,int,int,void*) ;} ;


 scalar_t__ NN_FSM_STATE_STOPPING ;
 scalar_t__ nn_slow (int) ;
 int stub1 (struct nn_fsm*,int,int,void*) ;
 int stub2 (struct nn_fsm*,int,int,void*) ;

void nn_fsm_feed (struct nn_fsm *self, int src, int type, void *srcptr)
{
    if (nn_slow (self->state != NN_FSM_STATE_STOPPING)) {
        self->fn (self, src, type, srcptr);
    } else {
        self->shutdown_fn (self, src, type, srcptr);
    }
}
