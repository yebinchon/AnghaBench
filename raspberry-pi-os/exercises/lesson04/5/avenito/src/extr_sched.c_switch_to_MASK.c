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
struct TYPE_2__ {int sp; } ;
struct task_struct {int counter; int priority; int preempt_count; TYPE_1__ cpu_context; } ;

/* Variables and functions */
 int NR_TASKS ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,struct task_struct*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct task_struct** task ; 

void FUNC2(struct task_struct * next) 
{
	struct task_struct * p;
	FUNC1("\n\r\n\r----------- Task switch -----------\r\n");
	for(int t=0; t < NR_TASKS; t++) {
		p = task[t];
		FUNC1("\n\rtask[%d] counter = %d\n\r", t, p->counter);
		FUNC1("task[%d] priority = %d\n\r", t, p->priority);
		FUNC1("task[%d] preempt_count = %d\n\r", t, p->preempt_count);
		FUNC1("task[%d] sp = 0x%08x\n\r", t, p->cpu_context.sp);
		FUNC1("\n\r------------------------------\r\n");
	}
	FUNC1("\n\rtask output: ");
	
	if (current == next) 
		return;
	struct task_struct * prev = current;
	current = next;
	FUNC0(prev, next);
}