
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pgd; } ;
struct task_struct {TYPE_1__ mm; } ;


 int cpu_switch_to (struct task_struct*,struct task_struct*) ;
 struct task_struct* current ;
 int set_pgd (int ) ;

void switch_to(struct task_struct * next)
{
 if (current == next)
  return;
 struct task_struct * prev = current;
 current = next;
 set_pgd(next->mm.pgd);
 cpu_switch_to(prev, next);
}
