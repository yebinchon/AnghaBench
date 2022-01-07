
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int activity_buffer ;


 int EXIT_STATUS_0 (int) ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int ereport (int,int ) ;
 int errdetail (char*,char const*) ;
 int errhint (char*) ;
 int errmsg (char*,char const*,int,int,...) ;
 int pg_strsignal (int) ;
 char* pgstat_get_crashed_backend_activity (int,char*,int) ;

__attribute__((used)) static void
LogChildExit(int lev, const char *procname, int pid, int exitstatus)
{




 char activity_buffer[1024];
 const char *activity = ((void*)0);

 if (!EXIT_STATUS_0(exitstatus))
  activity = pgstat_get_crashed_backend_activity(pid,
                activity_buffer,
                sizeof(activity_buffer));

 if (WIFEXITED(exitstatus))
  ereport(lev,




    (errmsg("%s (PID %d) exited with exit code %d",
      procname, pid, WEXITSTATUS(exitstatus)),
     activity ? errdetail("Failed process was running: %s", activity) : 0));
 else if (WIFSIGNALED(exitstatus))
 {
  ereport(lev,




    (errmsg("%s (PID %d) was terminated by signal %d: %s",
      procname, pid, WTERMSIG(exitstatus),
      pg_strsignal(WTERMSIG(exitstatus))),
     activity ? errdetail("Failed process was running: %s", activity) : 0));

 }
 else
  ereport(lev,




    (errmsg("%s (PID %d) exited with unrecognized status %d",
      procname, pid, exitstatus),
     activity ? errdetail("Failed process was running: %s", activity) : 0));
}
