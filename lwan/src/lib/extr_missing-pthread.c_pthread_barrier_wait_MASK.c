#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ in; scalar_t__ count; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; } ;
typedef  TYPE_1__ pthread_barrier_t ;

/* Variables and functions */
 int PTHREAD_BARRIER_SERIAL_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(pthread_barrier_t *barrier)
{
    FUNC2(&barrier->mutex);

    barrier->in++;
    if (barrier->in >= barrier->count) {
        barrier->in = 0;
        FUNC0(&barrier->cond);
        FUNC3(&barrier->mutex);

        return PTHREAD_BARRIER_SERIAL_THREAD;
    }

    FUNC1(&barrier->cond, &barrier->mutex);
    FUNC3(&barrier->mutex);

    return 0;
}