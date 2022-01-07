
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_sock {int ctx; } ;


 int nn_ctx_enter (int *) ;
 int nn_ctx_leave (int *) ;
 int nn_sock_setopt_inner (struct nn_sock*,int,int,void const*,size_t) ;

int nn_sock_setopt (struct nn_sock *self, int level, int option,
    const void *optval, size_t optvallen)
{
    int rc;

    nn_ctx_enter (&self->ctx);
    rc = nn_sock_setopt_inner (self, level, option, optval, optvallen);
    nn_ctx_leave (&self->ctx);

    return rc;
}
