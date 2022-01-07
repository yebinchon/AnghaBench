
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_aipc {int fsm; } ;


 int nn_fsm_isidle (int *) ;

int nn_aipc_isidle (struct nn_aipc *self)
{
    return nn_fsm_isidle (&self->fsm);
}
