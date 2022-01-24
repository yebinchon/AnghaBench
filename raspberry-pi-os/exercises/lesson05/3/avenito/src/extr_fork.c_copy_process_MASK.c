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
struct task_struct {unsigned long stack; unsigned long flags; int preempt_count; TYPE_1__ cpu_context; int /*<<< orphan*/  priority; int /*<<< orphan*/  counter; int /*<<< orphan*/  state; } ;
struct pt_regs {scalar_t__ sp; scalar_t__* regs; } ;
struct cpu_context {int dummy; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 unsigned long PF_KTHREAD ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 struct task_struct* current ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  nr_tasks ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ ret_from_fork ; 
 struct task_struct** task ; 
 struct pt_regs* FUNC4 (struct task_struct*) ; 

int FUNC5(unsigned long clone_flags, unsigned long fn, unsigned long arg, unsigned long stack)
{
	FUNC2();
	struct task_struct *p;

	p = (struct task_struct *) FUNC0();
	if (!p) {
		return -1;
	}

	struct pt_regs *childregs = FUNC4(p);
	FUNC1((unsigned long)childregs, sizeof(struct pt_regs));
	FUNC1((unsigned long)&p->cpu_context, sizeof(struct cpu_context));

	if (clone_flags & PF_KTHREAD) {
		p->cpu_context.x19 = fn;
		p->cpu_context.x20 = arg;
	} else {
		struct pt_regs * cur_regs = FUNC4(current);
		*cur_regs = *childregs;
		childregs->regs[0] = 0;
		childregs->sp = stack + PAGE_SIZE; 
		p->stack = stack;
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