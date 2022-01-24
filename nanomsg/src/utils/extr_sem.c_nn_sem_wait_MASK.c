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
struct nn_sem {int /*<<< orphan*/  mutex; scalar_t__ signaled; int /*<<< orphan*/  cond; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6 (struct nn_sem *self)
{
    int rc;

    /*  With OSX, semaphores are global named objects. They are not useful for
        our use case. To get a similar object we exploit the implementation
        detail of pthread_cond_wait() in Darwin kernel: It exits if signal is
        caught. Note that this behaviour is not mandated by POSIX
        and may break with future versions of Darwin. */
    rc = FUNC4 (&self->mutex);
    FUNC0 (rc == 0, rc);
    if (FUNC1 (self->signaled)) {
        rc = FUNC5 (&self->mutex);
        FUNC0 (rc == 0, rc);
        return 0;
    }
    rc = FUNC3 (&self->cond, &self->mutex);
    FUNC0 (rc == 0, rc);
    if (FUNC2 (!self->signaled)) {
        rc = FUNC5 (&self->mutex);
        FUNC0 (rc == 0, rc);
        return -EINTR;
    }
    self->signaled = 0;
    rc = FUNC5 (&self->mutex);
    FUNC0 (rc == 0, rc);

    return 0;
}