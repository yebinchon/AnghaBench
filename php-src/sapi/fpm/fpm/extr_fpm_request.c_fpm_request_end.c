
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tms {scalar_t__ tms_cstime; scalar_t__ tms_cutime; scalar_t__ tms_stime; scalar_t__ tms_utime; } ;
struct timeval {int dummy; } ;
struct TYPE_4__ {scalar_t__ tms_cstime; scalar_t__ tms_cutime; scalar_t__ tms_stime; scalar_t__ tms_utime; } ;
struct TYPE_3__ {scalar_t__ tms_cstime; scalar_t__ tms_cutime; scalar_t__ tms_stime; scalar_t__ tms_utime; } ;
struct fpm_scoreboard_proc_s {size_t memory; TYPE_2__ cpu_accepted; TYPE_1__ last_request_cpu; int cpu_duration; int accepted; struct timeval tv; int duration; int request_stage; } ;


 int FPM_REQUEST_FINISHED ;
 int ZLOG_WARNING ;
 int fpm_clock_get (struct timeval*) ;
 struct fpm_scoreboard_proc_s* fpm_scoreboard_proc_acquire (int *,int,int ) ;
 int fpm_scoreboard_proc_release (struct fpm_scoreboard_proc_s*) ;
 int fpm_stdio_flush_child () ;
 int timersub (struct timeval*,int *,int *) ;
 int times (struct tms*) ;
 size_t zend_memory_peak_usage (int) ;
 int zlog (int ,char*) ;

void fpm_request_end(void)
{
 struct fpm_scoreboard_proc_s *proc;
 struct timeval now;



 size_t memory = zend_memory_peak_usage(1);

 fpm_clock_get(&now);




 proc = fpm_scoreboard_proc_acquire(((void*)0), -1, 0);
 if (proc == ((void*)0)) {
  zlog(ZLOG_WARNING, "failed to acquire proc scoreboard");
  return;
 }
 proc->request_stage = FPM_REQUEST_FINISHED;
 proc->tv = now;
 timersub(&now, &proc->accepted, &proc->duration);







 proc->memory = memory;
 fpm_scoreboard_proc_release(proc);
 fpm_stdio_flush_child();
}
