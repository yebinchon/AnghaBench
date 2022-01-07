
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 unsigned long THREAD_SIZE ;

struct pt_regs * task_pt_regs(struct task_struct *tsk)
{
 unsigned long p = (unsigned long)tsk + THREAD_SIZE - sizeof(struct pt_regs);
 return (struct pt_regs *)p;
}
