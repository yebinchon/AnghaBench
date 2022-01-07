
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_scoreboard_s {int dummy; } ;
struct fpm_scoreboard_proc_s {int start_epoch; int pid; } ;
typedef int pid_t ;


 struct fpm_scoreboard_s* fpm_scoreboard ;
 int fpm_scoreboard_i ;
 struct fpm_scoreboard_proc_s* fpm_scoreboard_proc_get (struct fpm_scoreboard_s*,int) ;
 int time (int *) ;

void fpm_scoreboard_child_use(struct fpm_scoreboard_s *scoreboard, int child_index, pid_t pid)
{
 struct fpm_scoreboard_proc_s *proc;
 fpm_scoreboard = scoreboard;
 fpm_scoreboard_i = child_index;
 proc = fpm_scoreboard_proc_get(scoreboard, child_index);
 if (!proc) {
  return;
 }
 proc->pid = pid;
 proc->start_epoch = time(((void*)0));
}
