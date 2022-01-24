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
struct timespec {int dummy; } ;
struct mp_dispatch_queue {int in_process; int locked; int interrupted; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  cond; int /*<<< orphan*/ * tail; struct mp_dispatch_item* head; scalar_t__ lock_requests; int /*<<< orphan*/  in_process_thread; } ;
struct mp_dispatch_item {int completed; scalar_t__ asynchronous; int /*<<< orphan*/  fn_data; int /*<<< orphan*/  (* fn ) (int /*<<< orphan*/ ) ;struct mp_dispatch_item* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct timespec FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mp_dispatch_item*) ; 

void FUNC12(struct mp_dispatch_queue *queue, double timeout)
{
    FUNC7(&queue->lock);
    queue->wait = timeout > 0 ? FUNC1(FUNC2(), timeout) : 0;
    FUNC0(!queue->in_process); // recursion not allowed
    queue->in_process = true;
    queue->in_process_thread = FUNC9();
    // Wake up thread which called mp_dispatch_lock().
    if (queue->lock_requests)
        FUNC4(&queue->cond);
    while (1) {
        if (queue->lock_requests) {
            // Block due to something having called mp_dispatch_lock().
            FUNC6(&queue->cond, &queue->lock);
        } else if (queue->head) {
            struct mp_dispatch_item *item = queue->head;
            queue->head = item->next;
            if (!queue->head)
                queue->tail = NULL;
            item->next = NULL;
            // Unlock, because we want to allow other threads to queue items
            // while the dispatch item is processed.
            // At the same time, we must prevent other threads from returning
            // from mp_dispatch_lock(), which is done by locked=true.
            FUNC0(!queue->locked);
            queue->locked = true;
            FUNC8(&queue->lock);

            item->fn(item->fn_data);

            FUNC7(&queue->lock);
            FUNC0(queue->locked);
            queue->locked = false;
            // Wakeup mp_dispatch_run(), also mp_dispatch_lock().
            FUNC4(&queue->cond);
            if (item->asynchronous) {
                FUNC11(item);
            } else {
                item->completed = true;
            }
        } else if (queue->wait > 0 && !queue->interrupted) {
            struct timespec ts = FUNC3(queue->wait);
            if (FUNC5(&queue->cond, &queue->lock, &ts))
                queue->wait = 0;
        } else {
            break;
        }
    }
    FUNC0(!queue->locked);
    queue->in_process = false;
    queue->interrupted = false;
    FUNC8(&queue->lock);
}