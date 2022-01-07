
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_msg {int dummy; } ;
struct nn_excl {int * outpipe; } ;


 int EAGAIN ;
 int NN_PIPE_RELEASE ;
 int errnum_assert (int,int) ;
 int nn_pipe_send (int *,struct nn_msg*) ;
 scalar_t__ nn_slow (int) ;

int nn_excl_send (struct nn_excl *self, struct nn_msg *msg)
{
    int rc;

    if (nn_slow (!self->outpipe))
        return -EAGAIN;

    rc = nn_pipe_send (self->outpipe, msg);
    errnum_assert (rc >= 0, -rc);

    if (rc & NN_PIPE_RELEASE)
        self->outpipe = ((void*)0);

    return rc & ~NN_PIPE_RELEASE;
}
