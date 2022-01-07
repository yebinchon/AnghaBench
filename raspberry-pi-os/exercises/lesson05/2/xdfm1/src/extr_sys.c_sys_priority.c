
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {unsigned long priority; } ;


 int NR_TASKS ;
 int schedule () ;
 struct task_struct** task ;

void sys_priority(int pid, unsigned long priority)
{
    if(pid >= NR_TASKS)
    {
 return;
    }
    struct task_struct *p = task[pid];
    p->priority = priority;
    schedule();
}
