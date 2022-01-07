
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_aws {int fsm; } ;


 int nn_fsm_stop (int *) ;

void nn_aws_stop (struct nn_aws *self)
{
    nn_fsm_stop (&self->fsm);
}
