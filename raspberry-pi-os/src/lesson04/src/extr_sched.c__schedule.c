
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ state; int counter; int priority; } ;


 int NR_TASKS ;
 scalar_t__ TASK_RUNNING ;
 int preempt_disable () ;
 int preempt_enable () ;
 int switch_to (struct task_struct*) ;
 struct task_struct** task ;

void _schedule(void)
{
 preempt_disable();
 int next,c;
 struct task_struct * p;
 while (1) {
  c = -1;
  next = 0;
  for (int i = 0; i < NR_TASKS; i++){
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
 switch_to(task[next]);
 preempt_enable();
}
