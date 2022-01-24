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
typedef  int /*<<< orphan*/  task_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_2__ {int count; int /*<<< orphan*/  exception_port; int /*<<< orphan*/ * flavors; int /*<<< orphan*/ * behaviors; int /*<<< orphan*/ * ports; int /*<<< orphan*/ * masks; } ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__ ex ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5 (int pid) {
	kern_return_t kr;
	int i;
	task_t task = FUNC3 (pid);
	if (!task)
		return false;
	for (i = 0; i < ex.count; i++) {
		kr = FUNC4 (task, ex.masks[i], ex.ports[i],
					       ex.behaviors[i], ex.flavors[i]);
		if (kr != KERN_SUCCESS) {
			FUNC0 ("fail to restore exception ports\n");
			return false;
		}
	}
	kr = FUNC1 (FUNC2 (), ex.exception_port);
	if (kr != KERN_SUCCESS) {
		FUNC0 ("failed to deallocate exception port\n");
		return false;
	}
	return true;
}