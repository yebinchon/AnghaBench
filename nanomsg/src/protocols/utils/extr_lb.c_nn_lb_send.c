
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pipe {int dummy; } ;
struct nn_msg {int dummy; } ;
struct nn_lb {int priolist; } ;


 int EAGAIN ;
 int NN_PIPE_RELEASE ;
 int errnum_assert (int,int) ;
 int nn_pipe_send (struct nn_pipe*,struct nn_msg*) ;
 int nn_priolist_advance (int *,int) ;
 struct nn_pipe* nn_priolist_getpipe (int *) ;
 scalar_t__ nn_slow (int) ;

int nn_lb_send (struct nn_lb *self, struct nn_msg *msg, struct nn_pipe **to)
{
    int rc;
    struct nn_pipe *pipe;


    pipe = nn_priolist_getpipe (&self->priolist);
    if (nn_slow (!pipe))
        return -EAGAIN;


    rc = nn_pipe_send (pipe, msg);
    errnum_assert (rc >= 0, -rc);


    nn_priolist_advance (&self->priolist, rc & NN_PIPE_RELEASE);

    if (to != ((void*)0))
        *to = pipe;

    return rc & ~NN_PIPE_RELEASE;
}
