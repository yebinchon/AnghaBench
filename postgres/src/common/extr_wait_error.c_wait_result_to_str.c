
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int str ;


 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 char* _ (char*) ;
 char* pg_strsignal (int) ;
 char* pstrdup (char*) ;
 int snprintf (char*,int,char*,...) ;

char *
wait_result_to_str(int exitstatus)
{
 char str[512];

 if (WIFEXITED(exitstatus))
 {




  switch (WEXITSTATUS(exitstatus))
  {
   case 126:
    snprintf(str, sizeof(str), _("command not executable"));
    break;

   case 127:
    snprintf(str, sizeof(str), _("command not found"));
    break;

   default:
    snprintf(str, sizeof(str),
       _("child process exited with exit code %d"),
       WEXITSTATUS(exitstatus));
  }
 }
 else if (WIFSIGNALED(exitstatus))
 {





  snprintf(str, sizeof(str),
     _("child process was terminated by signal %d: %s"),
     WTERMSIG(exitstatus), pg_strsignal(WTERMSIG(exitstatus)));

 }
 else
  snprintf(str, sizeof(str),
     _("child process exited with unrecognized status %d"),
     exitstatus);

 return pstrdup(str);
}
