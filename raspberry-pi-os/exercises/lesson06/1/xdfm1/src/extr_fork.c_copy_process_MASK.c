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
struct TYPE_2__ {unsigned long x19; unsigned long x20; unsigned long pc; unsigned long sp; } ;
struct task_struct {unsigned long flags; int preempt_count; TYPE_1__ cpu_context; int /*<<< orphan*/  priority; int /*<<< orphan*/  counter; int /*<<< orphan*/  state; } ;
struct pt_regs {scalar_t__* regs; } ;

/* Variables and functions */
 unsigned long PF_KTHREAD ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  nr_tasks ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ ret_from_fork ; 
 struct task_struct** task ; 
 struct pt_regs* FUNC4 (struct task_struct*) ; 

int FUNC5(unsigned long clone_flags, unsigned long fn, unsigned long arg)
{
	FUNC2();
	struct task_struct *p;

	unsigned long page = FUNC0();
	p = (struct task_struct *) page;
	struct pt_regs *childregs = FUNC4(p);

	if (!p)
		return -1;

	if (clone_flags & PF_KTHREAD) {
		p->cpu_context.x19 = fn;
		p->cpu_context.x20 = arg;
	} else {
		struct pt_regs * cur_regs = FUNC4(current);
		*cur_regs = *childregs;
		childregs->regs[0] = 0;
		FUNC1(p);
	}
	p->flags = clone_flags;
	p->priority = current->priority;
	p->state = TASK_RUNNING;
	p->counter = p->priority;
	p->preempt_count = 1; //disable preemtion until schedule_tail

	p->cpu_context.pc = (unsigned long)ret_from_fork;
	p->cpu_context.sp = (unsigned long)childregs;
	int pid = nr_tasks++;
	task[pid] = p;	

	FUNC3();
	return pid;
}