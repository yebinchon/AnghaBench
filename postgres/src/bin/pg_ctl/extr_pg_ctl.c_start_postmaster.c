
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ pgpid_t ;
struct TYPE_3__ {scalar_t__ dwProcessId; int hThread; int hProcess; } ;
typedef TYPE_1__ PROCESS_INFORMATION ;


 int CloseHandle (int ) ;
 int CreateRestrictedProcess (char*,TYPE_1__*,int) ;
 char* DEVNULL ;
 scalar_t__ GetLastError () ;
 int MAXPGPATH ;
 int _ (char*) ;
 int errno ;
 char* exec_path ;
 int execl (char*,char*,char*,char*,char*) ;
 int exit (int) ;
 int fflush (int ) ;
 scalar_t__ fork () ;
 char* getenv (char*) ;
 char* log_file ;
 char* pgdata_opt ;
 char* post_opts ;
 int postmasterProcess ;
 int progname ;
 scalar_t__ setsid () ;
 int snprintf (char*,int,char*,char const*,char*,char*,char*,...) ;
 int stderr ;
 int stdout ;
 unsigned long strerror (int ) ;
 int write_stderr (int ,int ,unsigned long) ;

__attribute__((used)) static pgpid_t
start_postmaster(void)
{
 char cmd[MAXPGPATH];


 pgpid_t pm_pid;


 fflush(stdout);
 fflush(stderr);

 pm_pid = fork();
 if (pm_pid < 0)
 {

  write_stderr(_("%s: could not start server: %s\n"),
      progname, strerror(errno));
  exit(1);
 }
 if (pm_pid > 0)
 {

  return pm_pid;
 }
 if (log_file != ((void*)0))
  snprintf(cmd, MAXPGPATH, "exec \"%s\" %s%s < \"%s\" >> \"%s\" 2>&1",
     exec_path, pgdata_opt, post_opts,
     DEVNULL, log_file);
 else
  snprintf(cmd, MAXPGPATH, "exec \"%s\" %s%s < \"%s\" 2>&1",
     exec_path, pgdata_opt, post_opts, DEVNULL);

 (void) execl("/bin/sh", "/bin/sh", "-c", cmd, (char *) ((void*)0));


 write_stderr(_("%s: could not start server: %s\n"),
     progname, strerror(errno));
 exit(1);

 return 0;
}
