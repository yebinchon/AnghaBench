#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ nn_mutex_t ;
struct TYPE_6__ {int /*<<< orphan*/  cv; } ;
typedef  TYPE_2__ nn_condvar_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4 (nn_condvar_t *cond, nn_mutex_t *lock, int timeout)
{
    int rc;
    struct timeval tv;
    struct timespec ts;

    if (timeout < 0) {
        /*  This is an infinite sleep.  We don't care about return values,
            as any error we can treat as just a premature wakeup. */
        (void) FUNC3 (&cond->cv, &lock->mutex);
        return (0);
    }

    rc = FUNC1(&tv, NULL);
    FUNC0 (rc == 0, rc);

    /* There are extra operations performed here, but they are done to avoid
       wrap of the tv_usec and ts_nsec members on 32-bit systems. */
    tv.tv_sec += timeout / 1000;
    tv.tv_usec += (timeout % 1000) * 1000;

    ts.tv_sec = tv.tv_sec + (tv.tv_usec / 1000000);
    ts.tv_nsec = (tv.tv_usec % 1000000) * 1000;

    rc = FUNC2 (&cond->cv, &lock->mutex, &ts);
    if (rc == ETIMEDOUT)
        return (-ETIMEDOUT);
    /* Treat all other cases (including errors) as normal wakeup. */
    return (0);
}