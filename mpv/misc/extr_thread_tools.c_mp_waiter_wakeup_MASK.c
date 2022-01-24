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
struct mp_waiter {int done; uintptr_t value; int /*<<< orphan*/  lock; int /*<<< orphan*/  wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mp_waiter *waiter, uintptr_t value)
{
    FUNC2(&waiter->lock);
    FUNC0(!waiter->done);
    waiter->done = true;
    waiter->value = value;
    FUNC1(&waiter->wakeup);
    FUNC3(&waiter->lock);
}