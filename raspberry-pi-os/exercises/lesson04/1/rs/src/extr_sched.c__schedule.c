
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ state; int counter; int priority; } ;


 int NR_TASKS ;
 scalar_t__ TASK_RUNNING ;
 scalar_t__ current ;
 int preempt_disable () ;
 int preempt_enable () ;
 int print_debug_tasks () ;
 int printf (char*,int) ;
 int switch_to (scalar_t__) ;
 scalar_t__* task ;

void _schedule(void) {
  preempt_disable();
  int next, c;
  struct task_struct *p;
  while (1) {
    c = -1;
    next = 0;
    for (int i = 0; i < NR_TASKS; i++) {
      p = task[i];
      if (p && p->state == TASK_RUNNING && p->counter > c) {
        c = p->counter;
        next = i;
      }
    }
    if (c) {
      break;
    }
    for (int i = 0; i < NR_TASKS; i++) {
      p = task[i];
      if (p) {
        p->counter = (p->counter >> 1) + p->priority;
      }
    }
  }
  if (task[next] != current) {
    printf("schedule switch_to %d\r\n", next);
    print_debug_tasks();
  }
  switch_to(task[next]);
  preempt_enable();
}
