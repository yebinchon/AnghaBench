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
struct mp_dispatch_queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; int /*<<< orphan*/  locked; int /*<<< orphan*/  lock_requests; int /*<<< orphan*/  in_process; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *p)
{
    struct mp_dispatch_queue *queue = p;
    FUNC0(!queue->head);
    FUNC0(!queue->in_process);
    FUNC0(!queue->lock_requests);
    FUNC0(!queue->locked);
    FUNC1(&queue->cond);
    FUNC2(&queue->lock);
}