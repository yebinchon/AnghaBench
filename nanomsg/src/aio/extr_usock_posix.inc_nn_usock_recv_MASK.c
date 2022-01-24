#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int* pfd; size_t len; int /*<<< orphan*/ * buf; } ;
struct nn_usock {scalar_t__ state; int /*<<< orphan*/  task_recv; int /*<<< orphan*/  worker; TYPE_1__ in; int /*<<< orphan*/  event_received; int /*<<< orphan*/  fsm; } ;

/* Variables and functions */
 int ECONNRESET ; 
 int /*<<< orphan*/  NN_USOCK_ACTION_ERROR ; 
 int /*<<< orphan*/  NN_USOCK_RECEIVED ; 
 scalar_t__ NN_USOCK_STATE_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct nn_usock*,void*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7 (struct nn_usock *self, void *buf, size_t len, int *fd)
{
    int rc;
    size_t nbytes;

    /*  Make sure that the socket is actually alive. */
    if (self->state != NN_USOCK_STATE_ACTIVE) {
        FUNC2 (&self->fsm, NN_USOCK_ACTION_ERROR);
        return;
    }

    /*  Try to receive the data immediately. */
    nbytes = len;
    self->in.pfd = fd;
    rc = FUNC5 (self, buf, &nbytes);
    if (FUNC4 (rc < 0)) {
        FUNC0 (rc == -ECONNRESET, -rc);
        FUNC2 (&self->fsm, NN_USOCK_ACTION_ERROR);
        return;
    }

    /*  Success. */
    if (FUNC1 (nbytes == len)) {
        FUNC3 (&self->fsm, &self->event_received, NN_USOCK_RECEIVED);
        return;
    }

    /*  There are still data to receive in the background. */
    self->in.buf = ((uint8_t*) buf) + nbytes;
    self->in.len = len - nbytes;

    /*  Ask the worker thread to receive the remaining data. */
    FUNC6 (self->worker, &self->task_recv);
}