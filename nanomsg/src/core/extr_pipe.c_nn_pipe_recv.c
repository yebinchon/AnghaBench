
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nn_pipebase {scalar_t__ instate; TYPE_1__* vfptr; } ;
struct nn_pipe {int dummy; } ;
struct nn_msg {int dummy; } ;
struct TYPE_2__ {int (* recv ) (struct nn_pipebase*,struct nn_msg*) ;} ;


 scalar_t__ NN_PIPEBASE_INSTATE_ASYNC ;
 scalar_t__ NN_PIPEBASE_INSTATE_IDLE ;
 scalar_t__ NN_PIPEBASE_INSTATE_RECEIVED ;
 scalar_t__ NN_PIPEBASE_INSTATE_RECEIVING ;
 int NN_PIPEBASE_RELEASE ;
 int errnum_assert (int,int) ;
 int nn_assert (int) ;
 scalar_t__ nn_fast (int) ;
 int stub1 (struct nn_pipebase*,struct nn_msg*) ;

int nn_pipe_recv (struct nn_pipe *self, struct nn_msg *msg)
{
    int rc;
    struct nn_pipebase *pipebase;

    pipebase = (struct nn_pipebase*) self;
    nn_assert (pipebase->instate == NN_PIPEBASE_INSTATE_IDLE);
    pipebase->instate = NN_PIPEBASE_INSTATE_RECEIVING;
    rc = pipebase->vfptr->recv (pipebase, msg);
    errnum_assert (rc >= 0, -rc);

    if (nn_fast (pipebase->instate == NN_PIPEBASE_INSTATE_RECEIVED)) {
        pipebase->instate = NN_PIPEBASE_INSTATE_IDLE;
        return rc;
    }
    nn_assert (pipebase->instate == NN_PIPEBASE_INSTATE_RECEIVING);
    pipebase->instate = NN_PIPEBASE_INSTATE_ASYNC;
    return rc | NN_PIPEBASE_RELEASE;
}
