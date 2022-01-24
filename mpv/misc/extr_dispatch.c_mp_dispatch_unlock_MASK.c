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
struct mp_dispatch_queue {int locked; int locked_explicit; int lock_requests; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; int /*<<< orphan*/  locked_explicit_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct mp_dispatch_queue *queue)
{
    FUNC3(&queue->lock);
    FUNC0(queue->locked);
    // Must be called after a mp_dispatch_lock(), from the same thread.
    FUNC0(queue->locked_explicit);
    FUNC0(FUNC2(queue->locked_explicit_thread, FUNC5()));
    // "Unlock".
    queue->locked = false;
    queue->locked_explicit = false;
    queue->lock_requests -= 1;
    // Wakeup mp_dispatch_queue_process(), and maybe other mp_dispatch_lock()s.
    // (Would be nice to wake up only 1 other locker if lock_requests>0.)
    FUNC1(&queue->cond);
    FUNC4(&queue->lock);
}