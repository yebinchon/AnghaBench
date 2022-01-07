
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_pipebase_vfptr {int dummy; } ;
struct nn_pipebase {int out; int in; int options; TYPE_1__* sock; int outstate; int instate; int state; struct nn_pipebase_vfptr const* vfptr; int fsm; } ;
struct nn_ep_options {int dummy; } ;
struct nn_ep {int options; TYPE_1__* sock; } ;
struct TYPE_2__ {int fsm; } ;


 int NN_PIPEBASE_INSTATE_DEACTIVATED ;
 int NN_PIPEBASE_OUTSTATE_DEACTIVATED ;
 int NN_PIPEBASE_STATE_IDLE ;
 int memcpy (int *,int *,int) ;
 int nn_assert (TYPE_1__*) ;
 int nn_fsm_event_init (int *) ;
 int nn_fsm_init (int *,int *,int *,int ,struct nn_pipebase*,int *) ;

void nn_pipebase_init (struct nn_pipebase *self,
    const struct nn_pipebase_vfptr *vfptr, struct nn_ep *ep)
{
    nn_assert (ep->sock);

    nn_fsm_init (&self->fsm, ((void*)0), ((void*)0), 0, self, &ep->sock->fsm);
    self->vfptr = vfptr;
    self->state = NN_PIPEBASE_STATE_IDLE;
    self->instate = NN_PIPEBASE_INSTATE_DEACTIVATED;
    self->outstate = NN_PIPEBASE_OUTSTATE_DEACTIVATED;
    self->sock = ep->sock;
    memcpy (&self->options, &ep->options, sizeof (struct nn_ep_options));
    nn_fsm_event_init (&self->in);
    nn_fsm_event_init (&self->out);
}
