
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_scoreboard_proc_s {scalar_t__ lock; } ;



void fpm_scoreboard_proc_release(struct fpm_scoreboard_proc_s *proc)
{
 if (!proc) {
  return;
 }

 proc->lock = 0;
}
