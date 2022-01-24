#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nn_usock {scalar_t__ errnum; int /*<<< orphan*/  task_accept; int /*<<< orphan*/  worker; int /*<<< orphan*/  event_error; int /*<<< orphan*/  fsm; int /*<<< orphan*/  state; struct nn_usock* asock; int /*<<< orphan*/  s; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ ECONNABORTED ; 
 scalar_t__ EMFILE ; 
 scalar_t__ ENFILE ; 
 scalar_t__ ENOBUFS ; 
 scalar_t__ ENOMEM ; 
 scalar_t__ ENOTSUP ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  NN_USOCK_ACCEPT_ERROR ; 
 int /*<<< orphan*/  NN_USOCK_ACTION_ACCEPT ; 
 int /*<<< orphan*/  NN_USOCK_ACTION_BEING_ACCEPTED ; 
 int /*<<< orphan*/  NN_USOCK_ACTION_DONE ; 
 int /*<<< orphan*/  NN_USOCK_STATE_ACCEPTING_ERROR ; 
 int /*<<< orphan*/  SOCK_CLOEXEC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct nn_usock*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12 (struct nn_usock *self, struct nn_usock *listener)
{
    int s;

    /*  Start the actual accepting. */
    if (FUNC6(&self->fsm)) {
        FUNC8 (&self->fsm);
        FUNC5 (&self->fsm, NN_USOCK_ACTION_BEING_ACCEPTED);
    }
    FUNC5 (&listener->fsm, NN_USOCK_ACTION_ACCEPT);

    /*  Try to accept new connection in synchronous manner. */
#if NN_HAVE_ACCEPT4
    s = accept4 (listener->s, NULL, NULL, SOCK_CLOEXEC);
    if ((s < 0) && (errno == ENOTSUP)) {
        /*  Apparently some old versions of Linux have a stub for this in libc,
            without any of the underlying kernel support. */
        s = accept (listener->s, NULL, NULL);
    }
#else
    s = FUNC0 (listener->s, NULL, NULL);
#endif

    /*  Immediate success. */
    if (FUNC4 (s >= 0)) {
        /*  Disassociate the listener socket from the accepted
            socket. Is useful if we restart accepting on ACCEPT_ERROR  */
        listener->asock = NULL;
        self->asock = NULL;

        FUNC10 (self, s);
        FUNC5 (&listener->fsm, NN_USOCK_ACTION_DONE);
        FUNC5 (&self->fsm, NN_USOCK_ACTION_DONE);
        return;
    }

    /*  Detect a failure. Note that in ECONNABORTED case we simply ignore
        the error and wait for next connection in asynchronous manner. */
    FUNC2 (errno == EAGAIN || errno == EWOULDBLOCK ||
        errno == ECONNABORTED || errno == ENFILE || errno == EMFILE ||
        errno == ENOBUFS || errno == ENOMEM);

    /*  Pair the two sockets.  They are already paired in case
        previous attempt failed on ACCEPT_ERROR  */
    FUNC3 (!self->asock || self->asock == listener);
    self->asock = listener;
    FUNC3 (!listener->asock || listener->asock == self);
    listener->asock = self;

    /*  Some errors are just ok to ignore for now.  We also stop repeating
        any errors until next IN_FD event so that we are not in a tight loop
        and allow processing other events in the meantime  */
    if (FUNC9 (errno != EAGAIN && errno != EWOULDBLOCK
        && errno != ECONNABORTED && errno != listener->errnum))
    {
        listener->errnum = errno;
        listener->state = NN_USOCK_STATE_ACCEPTING_ERROR;
        FUNC7 (&listener->fsm,
            &listener->event_error, NN_USOCK_ACCEPT_ERROR);
        return;
    }

    /*  Ask the worker thread to wait for the new connection. */
    FUNC11 (listener->worker, &listener->task_accept);
}