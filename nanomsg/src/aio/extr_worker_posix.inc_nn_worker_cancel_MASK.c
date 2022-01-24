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
struct nn_worker_task {int /*<<< orphan*/  item; } ;
struct nn_worker {int /*<<< orphan*/  sync; int /*<<< orphan*/  tasks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3 (struct nn_worker *self, struct nn_worker_task *task)
{
    FUNC0 (&self->sync);
    FUNC2 (&self->tasks, &task->item);
    FUNC1 (&self->sync);
}