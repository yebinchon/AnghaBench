
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sp; } ;
struct task_struct {TYPE_1__ cpu_context; } ;


 int NR_TASKS ;
 int printf (char*,...) ;
 struct task_struct** task ;

void print_debug_tasks(void) {
  printf("tasks:\r\n");
  struct task_struct *p;
  for (int i = 0; i < NR_TASKS; i++) {
    p = task[i];
    if (!p)
      return;
    printf("[%d] sp=%x\r\n", i, p->cpu_context.sp);
  }
}
