
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cons_context; int dispatch_lock; int dispatch_cond; int running_sem; int thread; struct TYPE_4__* res; struct TYPE_4__* cmd; } ;
typedef TYPE_1__ RCoreTask ;


 int free (TYPE_1__*) ;
 int r_cons_context_free (int ) ;
 int r_th_cond_free (int ) ;
 int r_th_free (int ) ;
 int r_th_lock_free (int ) ;
 int r_th_sem_free (int ) ;

__attribute__((used)) static void task_free (RCoreTask *task) {
 if (!task) {
  return;
 }
 free (task->cmd);
 free (task->res);
 r_th_free (task->thread);
 r_th_sem_free (task->running_sem);
 r_th_cond_free (task->dispatch_cond);
 r_th_lock_free (task->dispatch_lock);
 r_cons_context_free (task->cons_context);
 free (task);
}
