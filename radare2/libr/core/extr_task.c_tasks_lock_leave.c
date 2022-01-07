
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tasks_lock; } ;
typedef int TASK_SIGSET_T ;
typedef TYPE_1__ RCore ;


 int r_th_lock_leave (int ) ;
 int tasks_lock_block_signals_reset (int *) ;

__attribute__((used)) static void tasks_lock_leave(RCore *core, TASK_SIGSET_T *old_sigset) {
 r_th_lock_leave (core->tasks_lock);
 tasks_lock_block_signals_reset (old_sigset);
}
