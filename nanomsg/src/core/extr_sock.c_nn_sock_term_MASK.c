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
struct nn_sock {TYPE_3__** optsets; int /*<<< orphan*/  ctx; int /*<<< orphan*/  eps; int /*<<< orphan*/  sdeps; int /*<<< orphan*/  relesem; int /*<<< orphan*/  termsem; int /*<<< orphan*/  fsm; int /*<<< orphan*/  sndfd; TYPE_1__* socktype; int /*<<< orphan*/  rcvfd; } ;
struct TYPE_6__ {TYPE_2__* vfptr; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* destroy ) (TYPE_3__*) ;} ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int EINTR ; 
 int NN_MAX_TRANSPORT ; 
 int NN_SOCKTYPE_FLAG_NORECV ; 
 int NN_SOCKTYPE_FLAG_NOSEND ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

int FUNC12 (struct nn_sock *self)
{
    int rc;
    int i;

    /*  NOTE: nn_sock_stop must have already been called. */

    /*  Some endpoints may still be alive.  Here we are going to wait
        till they are all closed.  This loop is not interruptible, because
        making it so would leave a partially cleaned up socket, and we don't
        have a way to defer resource deallocation. */
    for (;;) {
        rc = FUNC9 (&self->termsem);
        if (FUNC10 (rc == -EINTR))
            continue;
        FUNC0 (rc == 0, -rc);
        break;
    }

    /*  Also, wait for all holds on the socket to be released.  */
    for (;;) {
        rc = FUNC9 (&self->relesem);
        if (FUNC10 (rc == -EINTR))
            continue;
        FUNC0 (rc == 0, -rc);
        break;
    }

    /*  Threads that posted the semaphore(s) can still have the ctx locked
        for a short while. By simply entering the context and exiting it
        immediately we can be sure that any such threads have already
        exited the context. */
    FUNC1 (&self->ctx);
    FUNC2 (&self->ctx);

    /*  At this point, we can be reasonably certain that no other thread
        has any references to the socket. */

    /*  Close the event FDs entirely. */
    if (!(self->socktype->flags & NN_SOCKTYPE_FLAG_NORECV)) {
        FUNC4 (&self->rcvfd);
    }
    if (!(self->socktype->flags & NN_SOCKTYPE_FLAG_NOSEND)) {
        FUNC4 (&self->sndfd);
    }

    FUNC5 (&self->fsm);
    FUNC6 (&self->fsm);
    FUNC8 (&self->termsem);
    FUNC8 (&self->relesem);
    FUNC7 (&self->sdeps);
    FUNC7 (&self->eps);
    FUNC3 (&self->ctx);

    /*  Destroy any optsets associated with the socket. */
    for (i = 0; i != NN_MAX_TRANSPORT; ++i)
        if (self->optsets [i])
            self->optsets [i]->vfptr->destroy (self->optsets [i]);

    return 0;
}