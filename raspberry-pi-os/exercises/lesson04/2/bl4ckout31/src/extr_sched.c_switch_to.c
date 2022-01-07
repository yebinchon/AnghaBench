
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int cpu_switch_to (struct task_struct*,struct task_struct*) ;
 struct task_struct* current ;

void switch_to(struct task_struct * next)
{
 if (current == next)
  return;
 struct task_struct * prev = current;
 current = next;
 cpu_switch_to(prev, next);
}
