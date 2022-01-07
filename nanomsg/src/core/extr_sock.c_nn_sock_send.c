
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct nn_sock {int sndtimeo; int state; int flags; int sndfd; int ctx; TYPE_3__* sockbase; TYPE_1__* socktype; } ;
struct nn_msg {int dummy; } ;
struct TYPE_6__ {TYPE_2__* vfptr; } ;
struct TYPE_5__ {int (* send ) (TYPE_3__*,struct nn_msg*) ;} ;
struct TYPE_4__ {int flags; } ;


 int EAGAIN ;
 int EBADF ;
 int EINTR ;
 int ENOTSUP ;
 int ETIMEDOUT ;
 int NN_DONTWAIT ;
 int NN_SOCKTYPE_FLAG_NOSEND ;
 int NN_SOCK_FLAG_OUT ;





 int errnum_assert (int,int) ;
 int nn_assert (int) ;
 int nn_clock_ms () ;
 int nn_ctx_enter (int *) ;
 int nn_ctx_leave (int *) ;
 int nn_efd_wait (int *,int) ;
 scalar_t__ nn_fast (int) ;
 scalar_t__ nn_slow (int) ;
 int stub1 (TYPE_3__*,struct nn_msg*) ;

int nn_sock_send (struct nn_sock *self, struct nn_msg *msg, int flags)
{
    int rc;
    uint64_t deadline;
    uint64_t now;
    int timeout;


    if (nn_slow (self->socktype->flags & NN_SOCKTYPE_FLAG_NOSEND))
        return -ENOTSUP;

    nn_ctx_enter (&self->ctx);


    if (self->sndtimeo < 0) {
        deadline = -1;
        timeout = -1;
    }
    else {
        deadline = nn_clock_ms() + self->sndtimeo;
        timeout = self->sndtimeo;
    }

    while (1) {

        switch (self->state) {
        case 132:
        case 130:
             break;

        case 128:
        case 129:
        case 131:






            nn_ctx_leave (&self->ctx);
            return -EBADF;
        }


        rc = self->sockbase->vfptr->send (self->sockbase, msg);
        if (nn_fast (rc == 0)) {
            nn_ctx_leave (&self->ctx);
            return 0;
        }
        nn_assert (rc < 0);


        if (nn_slow (rc != -EAGAIN)) {
            nn_ctx_leave (&self->ctx);
            return rc;
        }



        if (nn_fast (flags & NN_DONTWAIT)) {
            nn_ctx_leave (&self->ctx);
            return -EAGAIN;
        }



        nn_ctx_leave (&self->ctx);
        rc = nn_efd_wait (&self->sndfd, timeout);
        if (nn_slow (rc == -ETIMEDOUT))
            return -ETIMEDOUT;
        if (nn_slow (rc == -EINTR))
            return -EINTR;
        if (nn_slow (rc == -EBADF))
            return -EBADF;
        errnum_assert (rc == 0, rc);
        nn_ctx_enter (&self->ctx);



        if (!nn_efd_wait (&self->sndfd, 0)) {
            self->flags |= NN_SOCK_FLAG_OUT;
        }



        if (self->sndtimeo >= 0) {
            now = nn_clock_ms();
            timeout = (int) (now > deadline ? 0 : deadline - now);
        }
    }
}
