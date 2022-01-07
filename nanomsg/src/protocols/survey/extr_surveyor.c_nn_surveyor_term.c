
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_surveyor {int xsurveyor; int fsm; int timer; int tosend; } ;


 int nn_fsm_term (int *) ;
 int nn_msg_term (int *) ;
 int nn_timer_term (int *) ;
 int nn_xsurveyor_term (int *) ;

__attribute__((used)) static void nn_surveyor_term (struct nn_surveyor *self)
{
    nn_msg_term (&self->tosend);
    nn_timer_term (&self->timer);
    nn_fsm_term (&self->fsm);
    nn_xsurveyor_term (&self->xsurveyor);
}
