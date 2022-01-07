
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct rlimit {void* rlim_cur; void* rlim_max; } ;
struct fpm_worker_pool_s {struct fpm_worker_pool_s* next; } ;
typedef void* rlim_t ;
typedef int readval ;
typedef int pid_t ;
typedef int fd_set ;
struct TYPE_4__ {int rlimit_core; int process_priority; scalar_t__ daemonize; scalar_t__ rlimit_files; } ;
struct TYPE_3__ {int parent_pid; int * send_config_pipe; } ;


 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 int FPM_CLEANUP_PARENT_EXIT ;
 int FPM_EXIT_OK ;
 int FPM_EXIT_SOFTWARE ;
 int PRIO_PROCESS ;
 int RLIMIT_CORE ;
 int RLIMIT_NOFILE ;
 scalar_t__ RLIM_INFINITY ;
 int ZLOG_DEBUG ;
 int ZLOG_ERROR ;
 int ZLOG_NOTICE ;
 int ZLOG_SYSERROR ;
 int close (int ) ;
 int exit (int ) ;
 int fork () ;
 int fpm_cleanups_run (int ) ;
 scalar_t__ fpm_clock_init () ;
 TYPE_2__ fpm_global_config ;
 TYPE_1__ fpm_globals ;
 int fpm_pagesize ;
 scalar_t__ fpm_unix_conf_wp (struct fpm_worker_pool_s*) ;
 struct fpm_worker_pool_s* fpm_worker_all_pools ;
 int geteuid () ;
 int getpagesize () ;
 int getpid () ;
 int pipe (int *) ;
 int read (int ,int*,int) ;
 int select (int ,int *,int *,int *,struct timeval*) ;
 scalar_t__ setpriority (int ,int ,int) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;
 int setsid () ;
 int zlog (int ,char*,...) ;

int fpm_unix_init_main()
{
 struct fpm_worker_pool_s *wp;
 int is_root = !geteuid();

 if (fpm_global_config.rlimit_files) {
  struct rlimit r;

  r.rlim_max = r.rlim_cur = (rlim_t) fpm_global_config.rlimit_files;

  if (0 > setrlimit(RLIMIT_NOFILE, &r)) {
   zlog(ZLOG_SYSERROR, "failed to set rlimit_core for this pool. Please check your system limits or decrease rlimit_files. setrlimit(RLIMIT_NOFILE, %d)", fpm_global_config.rlimit_files);
   return -1;
  }
 }

 if (fpm_global_config.rlimit_core) {
  struct rlimit r;

  r.rlim_max = r.rlim_cur = fpm_global_config.rlimit_core == -1 ? (rlim_t) RLIM_INFINITY : (rlim_t) fpm_global_config.rlimit_core;

  if (0 > setrlimit(RLIMIT_CORE, &r)) {
   zlog(ZLOG_SYSERROR, "failed to set rlimit_core for this pool. Please check your system limits or decrease rlimit_core. setrlimit(RLIMIT_CORE, %d)", fpm_global_config.rlimit_core);
   return -1;
  }
 }

 fpm_pagesize = getpagesize();
 if (fpm_global_config.daemonize) {
  struct timeval tv;
  fd_set rfds;
  int ret;

  if (pipe(fpm_globals.send_config_pipe) == -1) {
   zlog(ZLOG_SYSERROR, "failed to create pipe");
   return -1;
  }


  pid_t pid = fork();
  switch (pid) {

   case -1 :
    zlog(ZLOG_SYSERROR, "failed to daemonize");
    return -1;

   case 0 :
    close(fpm_globals.send_config_pipe[0]);
    break;

   default :
    close(fpm_globals.send_config_pipe[1]);






    FD_ZERO(&rfds);
    FD_SET(fpm_globals.send_config_pipe[0], &rfds);

    tv.tv_sec = 10;
    tv.tv_usec = 0;

    zlog(ZLOG_DEBUG, "The calling process is waiting for the master process to ping via fd=%d", fpm_globals.send_config_pipe[0]);
    ret = select(fpm_globals.send_config_pipe[0] + 1, &rfds, ((void*)0), ((void*)0), &tv);
    if (ret == -1) {
     zlog(ZLOG_SYSERROR, "failed to select");
     exit(FPM_EXIT_SOFTWARE);
    }
    if (ret) {
     int readval;
     ret = read(fpm_globals.send_config_pipe[0], &readval, sizeof(readval));
     if (ret == -1) {
      zlog(ZLOG_SYSERROR, "failed to read from pipe");
      exit(FPM_EXIT_SOFTWARE);
     }

     if (ret == 0) {
      zlog(ZLOG_ERROR, "no data have been read from pipe");
      exit(FPM_EXIT_SOFTWARE);
     } else {
      if (readval == 1) {
       zlog(ZLOG_DEBUG, "I received a valid acknowledge from the master process, I can exit without error");
       fpm_cleanups_run(FPM_CLEANUP_PARENT_EXIT);
       exit(FPM_EXIT_OK);
      } else {
       zlog(ZLOG_DEBUG, "The master process returned an error !");
       exit(FPM_EXIT_SOFTWARE);
      }
     }
    } else {
     zlog(ZLOG_ERROR, "the master process didn't send back its status (via the pipe to the calling process)");
      exit(FPM_EXIT_SOFTWARE);
    }
    exit(FPM_EXIT_SOFTWARE);
  }
 }


 setsid();
 if (0 > fpm_clock_init()) {
  return -1;
 }

 if (fpm_global_config.process_priority != 64) {
  if (is_root) {
   if (setpriority(PRIO_PROCESS, 0, fpm_global_config.process_priority) < 0) {
    zlog(ZLOG_SYSERROR, "Unable to set priority for the master process");
    return -1;
   }
  } else {
   zlog(ZLOG_NOTICE, "'process.priority' directive is ignored when FPM is not running as root");
  }
 }

 fpm_globals.parent_pid = getpid();
 for (wp = fpm_worker_all_pools; wp; wp = wp->next) {
  if (0 > fpm_unix_conf_wp(wp)) {
   return -1;
  }
 }

 return 0;
}
