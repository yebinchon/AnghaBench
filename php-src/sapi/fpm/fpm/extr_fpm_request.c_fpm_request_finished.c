
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct fpm_scoreboard_proc_s {struct timeval tv; int request_stage; } ;


 int FPM_REQUEST_FINISHED ;
 int ZLOG_WARNING ;
 int fpm_clock_get (struct timeval*) ;
 struct fpm_scoreboard_proc_s* fpm_scoreboard_proc_acquire (int *,int,int ) ;
 int fpm_scoreboard_proc_release (struct fpm_scoreboard_proc_s*) ;
 int zlog (int ,char*) ;

void fpm_request_finished()
{
 struct fpm_scoreboard_proc_s *proc;
 struct timeval now;

 fpm_clock_get(&now);

 proc = fpm_scoreboard_proc_acquire(((void*)0), -1, 0);
 if (proc == ((void*)0)) {
  zlog(ZLOG_WARNING, "failed to acquire proc scoreboard");
  return;
 }

 proc->request_stage = FPM_REQUEST_FINISHED;
 proc->tv = now;
 fpm_scoreboard_proc_release(proc);
}
