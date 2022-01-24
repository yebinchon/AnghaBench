#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct nn_sock {int sndtimeo; int state; int /*<<< orphan*/  flags; int /*<<< orphan*/  sndfd; int /*<<< orphan*/  ctx; TYPE_3__* sockbase; TYPE_1__* socktype; } ;
struct nn_msg {int dummy; } ;
struct TYPE_6__ {TYPE_2__* vfptr; } ;
struct TYPE_5__ {int (* send ) (TYPE_3__*,struct nn_msg*) ;} ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBADF ; 
 int EINTR ; 
 int ENOTSUP ; 
 int ETIMEDOUT ; 
 int NN_DONTWAIT ; 
 int NN_SOCKTYPE_FLAG_NOSEND ; 
 int /*<<< orphan*/  NN_SOCK_FLAG_OUT ; 
#define  NN_SOCK_STATE_ACTIVE 132 
#define  NN_SOCK_STATE_FINI 131 
#define  NN_SOCK_STATE_INIT 130 
#define  NN_SOCK_STATE_STOPPING 129 
#define  NN_SOCK_STATE_STOPPING_EPS 128 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (TYPE_3__*,struct nn_msg*) ; 

int FUNC9 (struct nn_sock *self, struct nn_msg *msg, int flags)
{
    int rc;
    uint64_t deadline;
    uint64_t now;
    int timeout;

    /*  Some sockets types cannot be used for sending messages. */
    if (FUNC7 (self->socktype->flags & NN_SOCKTYPE_FLAG_NOSEND))
        return -ENOTSUP;

    FUNC3 (&self->ctx);

    /*  Compute the deadline for SNDTIMEO timer. */
    if (self->sndtimeo < 0) {
        deadline = -1;
        timeout = -1;
    }
    else {
        deadline = FUNC2() + self->sndtimeo;
        timeout = self->sndtimeo;
    }

    while (1) {

        switch (self->state) {
        case NN_SOCK_STATE_ACTIVE:
        case NN_SOCK_STATE_INIT:
             break;

        case NN_SOCK_STATE_STOPPING_EPS:
        case NN_SOCK_STATE_STOPPING:
        case NN_SOCK_STATE_FINI:
            /*  Socket closed or closing.  Should we return something
                else here; recvmsg(2) for example returns no data in
                this case, like read(2).  The use of indexed file
                descriptors is further problematic, as an FD can be reused
                leading to situations where technically the outstanding
                operation should refer to some other socket entirely.  */
            FUNC4 (&self->ctx);
            return -EBADF;
        }

        /*  Try to send the message in a non-blocking way. */
        rc = self->sockbase->vfptr->send (self->sockbase, msg);
        if (FUNC6 (rc == 0)) {
            FUNC4 (&self->ctx);
            return 0;
        }
        FUNC1 (rc < 0);

        /*  Any unexpected error is forwarded to the caller. */
        if (FUNC7 (rc != -EAGAIN)) {
            FUNC4 (&self->ctx);
            return rc;
        }

        /*  If the message cannot be sent at the moment and the send call
            is non-blocking, return immediately. */
        if (FUNC6 (flags & NN_DONTWAIT)) {
            FUNC4 (&self->ctx);
            return -EAGAIN;
        }

        /*  With blocking send, wait while there are new pipes available
            for sending. */
        FUNC4 (&self->ctx);
        rc = FUNC5 (&self->sndfd, timeout);
        if (FUNC7 (rc == -ETIMEDOUT))
            return -ETIMEDOUT;
        if (FUNC7 (rc == -EINTR))
            return -EINTR;
        if (FUNC7 (rc == -EBADF))
            return -EBADF;
        FUNC0 (rc == 0, rc);
        FUNC3 (&self->ctx);
        /*
         *  Double check if pipes are still available for sending
         */
        if (!FUNC5 (&self->sndfd, 0)) {
            self->flags |= NN_SOCK_FLAG_OUT;
        }

        /*  If needed, re-compute the timeout to reflect the time that have
            already elapsed. */
        if (self->sndtimeo >= 0) {
            now = FUNC2();
            timeout = (int) (now > deadline ? 0 : deadline - now);
        }
    }
}