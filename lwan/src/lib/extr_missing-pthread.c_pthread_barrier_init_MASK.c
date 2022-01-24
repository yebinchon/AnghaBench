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
typedef  int /*<<< orphan*/  pthread_barrierattr_t ;
struct TYPE_3__ {unsigned int count; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cond; scalar_t__ in; } ;
typedef  TYPE_1__ pthread_barrier_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(pthread_barrier_t *restrict barrier,
        const pthread_barrierattr_t *restrict attr __attribute__((unused)),
        unsigned int count) {
    if (count == 0) {
        return -1;
    }

    barrier->count = count;
    barrier->in = 0;

    if (FUNC2(&barrier->mutex, NULL) < 0)
        return -1;

    if (FUNC0(&barrier->cond, NULL) < 0) {
        FUNC1(&barrier->mutex);
        return -1;
    }

    return 0;
}