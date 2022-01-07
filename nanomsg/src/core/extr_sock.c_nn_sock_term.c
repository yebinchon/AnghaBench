
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nn_sock {TYPE_3__** optsets; int ctx; int eps; int sdeps; int relesem; int termsem; int fsm; int sndfd; TYPE_1__* socktype; int rcvfd; } ;
struct TYPE_6__ {TYPE_2__* vfptr; } ;
struct TYPE_5__ {int (* destroy ) (TYPE_3__*) ;} ;
struct TYPE_4__ {int flags; } ;


 int EINTR ;
 int NN_MAX_TRANSPORT ;
 int NN_SOCKTYPE_FLAG_NORECV ;
 int NN_SOCKTYPE_FLAG_NOSEND ;
 int errnum_assert (int,int) ;
 int nn_ctx_enter (int *) ;
 int nn_ctx_leave (int *) ;
 int nn_ctx_term (int *) ;
 int nn_efd_term (int *) ;
 int nn_fsm_stopped_noevent (int *) ;
 int nn_fsm_term (int *) ;
 int nn_list_term (int *) ;
 int nn_sem_term (int *) ;
 int nn_sem_wait (int *) ;
 scalar_t__ nn_slow (int) ;
 int stub1 (TYPE_3__*) ;

int nn_sock_term (struct nn_sock *self)
{
    int rc;
    int i;







    for (;;) {
        rc = nn_sem_wait (&self->termsem);
        if (nn_slow (rc == -EINTR))
            continue;
        errnum_assert (rc == 0, -rc);
        break;
    }


    for (;;) {
        rc = nn_sem_wait (&self->relesem);
        if (nn_slow (rc == -EINTR))
            continue;
        errnum_assert (rc == 0, -rc);
        break;
    }





    nn_ctx_enter (&self->ctx);
    nn_ctx_leave (&self->ctx);





    if (!(self->socktype->flags & NN_SOCKTYPE_FLAG_NORECV)) {
        nn_efd_term (&self->rcvfd);
    }
    if (!(self->socktype->flags & NN_SOCKTYPE_FLAG_NOSEND)) {
        nn_efd_term (&self->sndfd);
    }

    nn_fsm_stopped_noevent (&self->fsm);
    nn_fsm_term (&self->fsm);
    nn_sem_term (&self->termsem);
    nn_sem_term (&self->relesem);
    nn_list_term (&self->sdeps);
    nn_list_term (&self->eps);
    nn_ctx_term (&self->ctx);


    for (i = 0; i != NN_MAX_TRANSPORT; ++i)
        if (self->optsets [i])
            self->optsets [i]->vfptr->destroy (self->optsets [i]);

    return 0;
}
