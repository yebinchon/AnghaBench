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
struct mp_dispatch_queue {int interrupted; int /*<<< orphan*/  wakeup_ctx; int /*<<< orphan*/  (* wakeup_fn ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; struct mp_dispatch_item* tail; struct mp_dispatch_item* head; } ;
struct mp_dispatch_item {scalar_t__ fn; scalar_t__ fn_data; struct mp_dispatch_item* next; scalar_t__ mergeable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mp_dispatch_item*) ; 

__attribute__((used)) static void FUNC5(struct mp_dispatch_queue *queue,
                               struct mp_dispatch_item *item)
{
    FUNC1(&queue->lock);
    if (item->mergeable) {
        for (struct mp_dispatch_item *cur = queue->head; cur; cur = cur->next) {
            if (cur->mergeable && cur->fn == item->fn &&
                cur->fn_data == item->fn_data)
            {
                FUNC4(item);
                FUNC2(&queue->lock);
                return;
            }
        }
    }

    if (queue->tail) {
        queue->tail->next = item;
    } else {
        queue->head = item;
    }
    queue->tail = item;

    // Wake up the main thread; note that other threads might wait on this
    // condition for reasons, so broadcast the condition.
    FUNC0(&queue->cond);
    // No wakeup callback -> assume mp_dispatch_queue_process() needs to be
    // interrupted instead.
    if (!queue->wakeup_fn)
        queue->interrupted = true;
    FUNC2(&queue->lock);

    if (queue->wakeup_fn)
        queue->wakeup_fn(queue->wakeup_ctx);
}