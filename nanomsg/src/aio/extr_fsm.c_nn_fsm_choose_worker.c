
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_worker {int dummy; } ;
struct nn_fsm {int ctx; } ;


 struct nn_worker* nn_ctx_choose_worker (int ) ;

struct nn_worker *nn_fsm_choose_worker (struct nn_fsm *self)
{
    return nn_ctx_choose_worker (self->ctx);
}
