
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPM_CLEANUP_PARENT_EXEC ;
 int FPM_EXIT_SOFTWARE ;
 int ZLOG_DEBUG ;
 int ZLOG_NOTICE ;
 int ZLOG_SYSERROR ;
 int ZLOG_WARNING ;
 int execvp (int ,int *) ;
 int exit (int ) ;
 int fpm_cleanups_run (int ) ;
 scalar_t__ fpm_signals_block () ;
 int optional_arg (int) ;
 int * saved_argv ;
 int zlog (int ,char*,...) ;

__attribute__((used)) static void fpm_pctl_exec()
{
 zlog(ZLOG_DEBUG, "Blocking some signals before reexec");
 if (0 > fpm_signals_block()) {
  zlog(ZLOG_WARNING, "concurrent reloads may be unstable");
 }

 zlog(ZLOG_NOTICE, "reloading: execvp(\"%s\", {\"%s\""
   "%s%s%s" "%s%s%s" "%s%s%s" "%s%s%s" "%s%s%s"
   "%s%s%s" "%s%s%s" "%s%s%s" "%s%s%s" "%s%s%s"
  "})",
  saved_argv[0], saved_argv[0],
  optional_arg(1),
  optional_arg(2),
  optional_arg(3),
  optional_arg(4),
  optional_arg(5),
  optional_arg(6),
  optional_arg(7),
  optional_arg(8),
  optional_arg(9),
  optional_arg(10)
 );

 fpm_cleanups_run(FPM_CLEANUP_PARENT_EXEC);
 execvp(saved_argv[0], saved_argv);
 zlog(ZLOG_SYSERROR, "failed to reload: execvp() failed");
 exit(FPM_EXIT_SOFTWARE);
}
