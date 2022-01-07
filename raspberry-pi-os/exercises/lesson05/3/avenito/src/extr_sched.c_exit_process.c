
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ stack; int state; } ;


 int NR_TASKS ;
 int TASK_ZOMBIE ;
 TYPE_1__* current ;
 int free_page (scalar_t__) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int schedule () ;
 TYPE_1__** task ;

void exit_process(){
 preempt_disable();
 for (int i = 0; i < NR_TASKS; i++){
  if (task[i] == current) {
   task[i]->state = TASK_ZOMBIE;
   break;
  }
 }
 if (current->stack) {
  free_page(current->stack);
 }
 preempt_enable();
 schedule();
}
