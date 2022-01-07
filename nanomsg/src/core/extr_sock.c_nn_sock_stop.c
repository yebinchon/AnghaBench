
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sock {int ctx; int fsm; } ;


 int nn_ctx_enter (int *) ;
 int nn_ctx_leave (int *) ;
 int nn_fsm_stop (int *) ;

void nn_sock_stop (struct nn_sock *self)
{
    nn_ctx_enter (&self->ctx);
    nn_fsm_stop (&self->fsm);
    nn_ctx_leave (&self->ctx);
}
