
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long x19; unsigned long x20; unsigned long pc; scalar_t__ sp; } ;
struct task_struct {int preempt_count; TYPE_1__ cpu_context; int priority; int counter; int state; } ;
struct TYPE_4__ {int priority; } ;


 int TASK_RUNNING ;
 scalar_t__ THREAD_SIZE ;
 TYPE_2__* current ;
 scalar_t__ get_free_page () ;
 int nr_tasks ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ ret_from_fork ;
 struct task_struct** task ;

int copy_process(unsigned long fn, unsigned long arg)
{
 preempt_disable();
 struct task_struct *p;

 p = (struct task_struct *) get_free_page();
 if (!p)
  return 1;

 p->priority = current->priority;
 p->state = TASK_RUNNING;
 p->counter = p->priority;
 p->preempt_count = 1;

 p->cpu_context.x19 = fn;
 p->cpu_context.x20 = arg;
 p->cpu_context.pc = (unsigned long)ret_from_fork;
 p->cpu_context.sp = (unsigned long)p + THREAD_SIZE;
 int pid = nr_tasks++;
 task[pid] = p;
 preempt_enable();
 return 0;
}
