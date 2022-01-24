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
struct mp_cancel {scalar_t__* wakeup_pipe; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_cancel*) ; 

int FUNC4(struct mp_cancel *c)
{
    FUNC1(&c->lock);
    if (c->wakeup_pipe[0] < 0) {
        FUNC0(c->wakeup_pipe);
        FUNC3(c);
    }
    FUNC2(&c->lock);


    return c->wakeup_pipe[0];
}