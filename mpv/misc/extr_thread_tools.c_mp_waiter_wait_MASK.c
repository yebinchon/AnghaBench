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
struct mp_waiter {uintptr_t value; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  lock; int /*<<< orphan*/  done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_waiter*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

uintptr_t FUNC6(struct mp_waiter *waiter)
{
    FUNC4(&waiter->lock);
    while (!waiter->done)
        FUNC2(&waiter->wakeup, &waiter->lock);
    FUNC5(&waiter->lock);

    uintptr_t ret = waiter->value;

    // We document that after mp_waiter_wait() the waiter object becomes
    // invalid. (It strictly returns only after mp_waiter_wakeup() has returned,
    // and the object is "single-shot".) So destroy it here.

    // Normally, we expect that the system uses futexes, in which case the
    // following functions will do nearly nothing. This is true for Windows
    // and Linux. But some lesser OSes still might allocate kernel objects
    // when initializing mutexes, so destroy them here.
    FUNC3(&waiter->lock);
    FUNC1(&waiter->wakeup);

    FUNC0(waiter, 0xCA, sizeof(*waiter)); // for debugging

    return ret;
}