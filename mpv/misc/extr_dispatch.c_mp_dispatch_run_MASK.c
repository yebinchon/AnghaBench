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
struct mp_dispatch_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; } ;
struct mp_dispatch_item {void* fn_data; int /*<<< orphan*/  completed; int /*<<< orphan*/  fn; } ;
typedef  int /*<<< orphan*/  mp_dispatch_fn ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_dispatch_queue*,struct mp_dispatch_item*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct mp_dispatch_queue *queue,
                     mp_dispatch_fn fn, void *fn_data)
{
    struct mp_dispatch_item item = {
        .fn = fn,
        .fn_data = fn_data,
    };
    FUNC0(queue, &item);

    FUNC2(&queue->lock);
    while (!item.completed)
        FUNC1(&queue->cond, &queue->lock);
    FUNC3(&queue->lock);
}