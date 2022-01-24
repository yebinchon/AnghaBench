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
struct lwan_thread {int /*<<< orphan*/  pending_fds; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lwan_thread*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 

void FUNC5(struct lwan_thread *t, int fd)
{
    for (int i = 0; i < 10; i++) {
        bool pushed = FUNC4(&t->pending_fds, fd);

        if (FUNC0(pushed))
            return;

        /* Queue is full; nudge the thread to consume it. */
        FUNC3(t);
    }

    FUNC2("Dropping connection %d", fd);
    /* FIXME: send "busy" response now, even without receiving request? */
    FUNC1(fd);
}