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
struct TYPE_2__ {int /*<<< orphan*/  head; } ;
struct mp_cancel {scalar_t__* wakeup_pipe; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  lock; scalar_t__ win32_event; TYPE_1__ slaves; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mp_cancel*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *p)
{
    struct mp_cancel *c = p;

    FUNC1(!c->slaves.head); // API user error

    FUNC3(c, NULL);

    if (c->wakeup_pipe[0] >= 0) {
        FUNC2(c->wakeup_pipe[0]);
        FUNC2(c->wakeup_pipe[1]);
    }

#ifdef __MINGW32__
    if (c->win32_event)
        CloseHandle(c->win32_event);
#endif

    FUNC5(&c->lock);
    FUNC4(&c->wakeup);
}