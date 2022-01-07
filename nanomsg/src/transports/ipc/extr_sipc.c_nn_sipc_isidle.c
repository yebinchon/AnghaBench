
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sipc {int fsm; } ;


 int nn_fsm_isidle (int *) ;

int nn_sipc_isidle (struct nn_sipc *self)
{
    return nn_fsm_isidle (&self->fsm);
}
