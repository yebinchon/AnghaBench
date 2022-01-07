
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long x19; unsigned long x20; unsigned long pc; unsigned long sp; } ;
struct task_struct {unsigned long flags; int preempt_count; TYPE_1__ cpu_context; int priority; int counter; int state; } ;
struct pt_regs {scalar_t__* regs; } ;


 unsigned long PF_KTHREAD ;
 int TASK_RUNNING ;
 unsigned long allocate_kernel_page () ;
 int copy_virt_memory (struct task_struct*) ;
 struct task_struct* current ;
 int nr_tasks ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ ret_from_fork ;
 struct task_struct** task ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;

int copy_process(unsigned long clone_flags, unsigned long fn, unsigned long arg)
{
 preempt_disable();
 struct task_struct *p;

 unsigned long page = allocate_kernel_page();
 p = (struct task_struct *) page;
 struct pt_regs *childregs = task_pt_regs(p);

 if (!p)
  return -1;

 if (clone_flags & PF_KTHREAD) {
  p->cpu_context.x19 = fn;
  p->cpu_context.x20 = arg;
 } else {
  struct pt_regs * cur_regs = task_pt_regs(current);
  *childregs = *cur_regs;
  childregs->regs[0] = 0;
  copy_virt_memory(p);
 }
 p->flags = clone_flags;
 p->priority = current->priority;
 p->state = TASK_RUNNING;
 p->counter = p->priority;
 p->preempt_count = 1;

 p->cpu_context.pc = (unsigned long)ret_from_fork;
 p->cpu_context.sp = (unsigned long)childregs;
 int pid = nr_tasks++;
 task[pid] = p;

 preempt_enable();
 return pid;
}
