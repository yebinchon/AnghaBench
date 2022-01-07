
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPM_CLEANUP_PARENT_EXIT_MAIN ;
 int FPM_EXIT_OK ;
 int ZLOG_NOTICE ;
 int exit (int ) ;
 int fpm_cleanups_run (int ) ;
 int fpm_conf_unlink_pid () ;
 int zlog (int ,char*) ;

__attribute__((used)) static void fpm_pctl_exit()
{
 zlog(ZLOG_NOTICE, "exiting, bye-bye!");

 fpm_conf_unlink_pid();
 fpm_cleanups_run(FPM_CLEANUP_PARENT_EXIT_MAIN);
 exit(FPM_EXIT_OK);
}
