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
typedef  scalar_t__ timeout_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct timeout_queue {int dummy; } ;
struct lwan_thread {int /*<<< orphan*/  wheel; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  monotonic_clock_id ; 
 int /*<<< orphan*/  FUNC3 (struct timeout_queue*,struct lwan_thread*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct timeout_queue *tq, struct lwan_thread *t, int epoll_fd)
{
    timeout_t wheel_timeout;
    struct timespec now;

    if (FUNC0(FUNC1(monotonic_clock_id, &now) < 0))
        FUNC2("Could not get monotonic time");

    FUNC5(t->wheel,
                    (timeout_t)(now.tv_sec * 1000 + now.tv_nsec / 1000000));

    wheel_timeout = FUNC4(t->wheel);
    if (FUNC0((int64_t)wheel_timeout < 0))
        goto infinite_timeout;

    if (wheel_timeout == 0) {
        if (!FUNC3(tq, t, epoll_fd))
            goto infinite_timeout;

        wheel_timeout = FUNC4(t->wheel);
        if (wheel_timeout == 0)
            goto infinite_timeout;
    }

    return (int)wheel_timeout;

infinite_timeout:
    return -1;
}