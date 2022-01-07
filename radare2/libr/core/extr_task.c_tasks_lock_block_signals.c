
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TASK_SIGSET_T ;



__attribute__((used)) static void tasks_lock_block_signals(TASK_SIGSET_T *old_sigset) { (void)old_sigset; }
