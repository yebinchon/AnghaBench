
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_aws {int fsm; } ;


 int nn_fsm_isidle (int *) ;

int nn_aws_isidle (struct nn_aws *self)
{
    return nn_fsm_isidle (&self->fsm);
}
