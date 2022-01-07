
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long x19; unsigned long x20; unsigned long pc; scalar_t__ sp; } ;
struct task_struct {long priority; long counter; int preempt_count; struct task_struct* next; TYPE_1__ cpu_context; int state; } ;


 int TASK_RUNNING ;
 scalar_t__ THREAD_SIZE ;
 scalar_t__ get_free_page () ;
 struct task_struct* init ;
 int preempt_disable () ;
 int preempt_enable () ;
 scalar_t__ ret_from_fork ;

int copy_process(unsigned long fn, unsigned long arg, long pri) {
  preempt_disable();
  struct task_struct *p;

  p = (struct task_struct *)get_free_page();
  if (!p)
    return 1;
  p->priority = pri;
  p->state = TASK_RUNNING;
  p->counter = p->priority;
  p->preempt_count = 1;
  p->next = 0;

  p->cpu_context.x19 = fn;
  p->cpu_context.x20 = arg;
  p->cpu_context.pc = (unsigned long)ret_from_fork;
  p->cpu_context.sp = (unsigned long)p + THREAD_SIZE;

  struct task_struct *last = init;
  while (last->next)
    last = last->next;
  last->next = p;
  preempt_enable();
  return 0;
}
