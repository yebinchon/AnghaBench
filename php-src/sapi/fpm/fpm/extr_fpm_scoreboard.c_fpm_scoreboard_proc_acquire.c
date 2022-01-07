
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpm_scoreboard_s {int dummy; } ;
struct fpm_scoreboard_proc_s {int lock; } ;


 struct fpm_scoreboard_proc_s* fpm_scoreboard_proc_get (struct fpm_scoreboard_s*,int) ;
 int fpm_spinlock (int *,int) ;

struct fpm_scoreboard_proc_s *fpm_scoreboard_proc_acquire(struct fpm_scoreboard_s *scoreboard, int child_index, int nohang)
{
 struct fpm_scoreboard_proc_s *proc;

 proc = fpm_scoreboard_proc_get(scoreboard, child_index);
 if (!proc) {
  return ((void*)0);
 }

 if (!fpm_spinlock(&proc->lock, nohang)) {
  return ((void*)0);
 }

 return proc;
}
