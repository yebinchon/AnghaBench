
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_bipc {int fsm; } ;


 int nn_fsm_stop (int *) ;

__attribute__((used)) static void nn_bipc_stop (void *self)
{
    struct nn_bipc *bipc = self;

    nn_fsm_stop (&bipc->fsm);
}
