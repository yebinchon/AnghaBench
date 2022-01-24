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
struct mp_dispatch_queue {int /*<<< orphan*/  lock; struct mp_dispatch_item* tail; struct mp_dispatch_item* head; } ;
struct mp_dispatch_item {scalar_t__ fn; void* fn_data; struct mp_dispatch_item* next; } ;
typedef  scalar_t__ mp_dispatch_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_dispatch_item*) ; 

void FUNC3(struct mp_dispatch_queue *queue,
                           mp_dispatch_fn fn, void *fn_data)
{
    FUNC0(&queue->lock);
    struct mp_dispatch_item **pcur = &queue->head;
    queue->tail = NULL;
    while (*pcur) {
        struct mp_dispatch_item *cur = *pcur;
        if (cur->fn == fn && cur->fn_data == fn_data) {
            *pcur = cur->next;
            FUNC2(cur);
        } else {
            queue->tail = cur;
            pcur = &cur->next;
        }
    }
    FUNC1(&queue->lock);
}