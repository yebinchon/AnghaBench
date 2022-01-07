
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * running_sem; } ;
typedef int RThreadSemaphore ;
typedef TYPE_1__ RCoreTask ;


 int r_th_sem_post (int *) ;
 int r_th_sem_wait (int *) ;

__attribute__((used)) static void task_join(RCoreTask *task) {
 RThreadSemaphore *sem = task->running_sem;
 if (!sem) {
  return;
 }

 r_th_sem_wait (sem);
 r_th_sem_post (sem);
}
