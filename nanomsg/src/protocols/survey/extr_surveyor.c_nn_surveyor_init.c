
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sockbase; } ;
struct nn_surveyor {int fsm; scalar_t__ timedout; int deadline; int tosend; int timer; int surveyid; int state; TYPE_1__ xsurveyor; } ;
struct nn_sockbase_vfptr {int dummy; } ;


 int NN_SURVEYOR_DEFAULT_DEADLINE ;
 int NN_SURVEYOR_SRC_DEADLINE_TIMER ;
 int NN_SURVEYOR_STATE_IDLE ;
 int nn_fsm_init_root (int *,int ,int ,int ) ;
 int nn_fsm_start (int *) ;
 int nn_msg_init (int *,int ) ;
 int nn_random_generate (int *,int) ;
 int nn_sockbase_getctx (int *) ;
 int nn_surveyor_handler ;
 int nn_surveyor_shutdown ;
 int nn_timer_init (int *,int ,int *) ;
 int nn_xsurveyor_init (TYPE_1__*,struct nn_sockbase_vfptr const*,void*) ;

__attribute__((used)) static void nn_surveyor_init (struct nn_surveyor *self,
    const struct nn_sockbase_vfptr *vfptr, void *hint)
{
    nn_xsurveyor_init (&self->xsurveyor, vfptr, hint);
    nn_fsm_init_root (&self->fsm, nn_surveyor_handler, nn_surveyor_shutdown,
        nn_sockbase_getctx (&self->xsurveyor.sockbase));
    self->state = NN_SURVEYOR_STATE_IDLE;



    nn_random_generate (&self->surveyid, sizeof (self->surveyid));

    nn_timer_init (&self->timer, NN_SURVEYOR_SRC_DEADLINE_TIMER, &self->fsm);
    nn_msg_init (&self->tosend, 0);
    self->deadline = NN_SURVEYOR_DEFAULT_DEADLINE;
    self->timedout = 0;


    nn_fsm_start (&self->fsm);
}
