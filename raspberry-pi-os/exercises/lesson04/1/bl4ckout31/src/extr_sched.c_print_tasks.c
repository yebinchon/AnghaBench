
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sp; } ;
struct task_struct {TYPE_1__ cpu_context; } ;


 int NR_TASKS ;
 int printf (char*,int,int) ;
 struct task_struct** task ;

void print_tasks()
{
 struct task_struct *t = task[0];
 for (int i = 0; (i < NR_TASKS) && t; i++){
  t = task[i];
  if (t) {
   printf("    %d: sp: 0x%x\r\n", i, t->cpu_context.sp);
  }
 }
}
