#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  cons_context; int /*<<< orphan*/  dispatch_lock; int /*<<< orphan*/  dispatch_cond; int /*<<< orphan*/  running_sem; int /*<<< orphan*/  thread; struct TYPE_4__* res; struct TYPE_4__* cmd; } ;
typedef  TYPE_1__ RCoreTask ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6 (RCoreTask *task) {
	if (!task) {
		return;
	}
	FUNC0 (task->cmd);
	FUNC0 (task->res);
	FUNC3 (task->thread);
	FUNC5 (task->running_sem);
	FUNC2 (task->dispatch_cond);
	FUNC4 (task->dispatch_lock);
	FUNC1 (task->cons_context);
	FUNC0 (task);
}