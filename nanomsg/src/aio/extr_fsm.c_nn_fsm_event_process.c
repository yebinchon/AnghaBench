
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_fsm_event {int src; int type; int fsm; int * srcptr; } ;


 int nn_fsm_feed (int ,int,int,void*) ;

void nn_fsm_event_process (struct nn_fsm_event *self)
{
    int src;
    int type;
    void *srcptr;

    src = self->src;
    type = self->type;
    srcptr = self->srcptr;
    self->src = -1;
    self->type = -1;
    self->srcptr = ((void*)0);

    nn_fsm_feed (self->fsm, src, type, srcptr);
}
