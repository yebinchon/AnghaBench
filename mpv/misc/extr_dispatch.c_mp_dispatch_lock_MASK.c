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
struct mp_dispatch_queue {int locked_explicit; int lock_requests; int locked; int /*<<< orphan*/  lock; int /*<<< orphan*/  locked_explicit_thread; int /*<<< orphan*/  cond; scalar_t__ in_process; int /*<<< orphan*/  wakeup_ctx; int /*<<< orphan*/  (* wakeup_fn ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  in_process_thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(struct mp_dispatch_queue *queue)
{
    FUNC3(&queue->lock);
    // Must not be called recursively from dispatched callbacks.
    if (queue->in_process)
        FUNC0(!FUNC2(queue->in_process_thread, FUNC5()));
    // Must not be called recursively at all.
    if (queue->locked_explicit)
        FUNC0(!FUNC2(queue->locked_explicit_thread, FUNC5()));
    queue->lock_requests += 1;
    // And now wait until the target thread gets "trapped" within the
    // mp_dispatch_queue_process() call, which will mean we get exclusive
    // access to the target's thread state.
    while (!queue->in_process) {
        FUNC4(&queue->lock);
        if (queue->wakeup_fn)
            queue->wakeup_fn(queue->wakeup_ctx);
        FUNC3(&queue->lock);
        if (queue->in_process)
            break;
        FUNC1(&queue->cond, &queue->lock);
    }
    // Wait until we can get the lock.
    while (!queue->in_process || queue->locked)
        FUNC1(&queue->cond, &queue->lock);
    // "Lock".
    FUNC0(queue->lock_requests);
    FUNC0(!queue->locked);
    FUNC0(!queue->locked_explicit);
    queue->locked = true;
    queue->locked_explicit = true;
    queue->locked_explicit_thread = FUNC5();
    FUNC4(&queue->lock);
}