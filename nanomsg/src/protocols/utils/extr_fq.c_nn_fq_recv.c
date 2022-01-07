
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_pipe {int dummy; } ;
struct nn_msg {int dummy; } ;
struct nn_fq {int priolist; } ;


 int EAGAIN ;
 int NN_PIPE_RELEASE ;
 int errnum_assert (int,int) ;
 int nn_pipe_recv (struct nn_pipe*,struct nn_msg*) ;
 int nn_priolist_advance (int *,int) ;
 struct nn_pipe* nn_priolist_getpipe (int *) ;
 scalar_t__ nn_slow (int) ;

int nn_fq_recv (struct nn_fq *self, struct nn_msg *msg, struct nn_pipe **pipe)
{
    int rc;
    struct nn_pipe *p;


    p = nn_priolist_getpipe (&self->priolist);
    if (nn_slow (!p))
        return -EAGAIN;


    rc = nn_pipe_recv (p, msg);
    errnum_assert (rc >= 0, -rc);


    if (pipe)
        *pipe = p;


    nn_priolist_advance (&self->priolist, rc & NN_PIPE_RELEASE);

    return rc & ~NN_PIPE_RELEASE;
}
