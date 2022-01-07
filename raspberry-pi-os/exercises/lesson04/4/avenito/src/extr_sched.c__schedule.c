
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ state; int counter; int priority; struct task_struct* next_task; } ;


 scalar_t__ TASK_RUNNING ;
 struct task_struct* initial_task ;
 int preempt_disable () ;
 int preempt_enable () ;
 int switch_to (struct task_struct*) ;

void _schedule(void)
{
 preempt_disable();
 int c;
 struct task_struct * p, * next_task;
 while (1) {
  c = -1;


  for (p = initial_task; p; p = p->next_task){

   if (p && p->state == TASK_RUNNING && p->counter > c) {
    c = p->counter;
    next_task = p;
   }
  }
  if (c) {
   break;
  }

  for (p = initial_task; p; p = p->next_task) {

   if (p) {
    p->counter = (p->counter >> 1) + p->priority;
   }
  }
 }
 switch_to(next_task);
 preempt_enable();
}
