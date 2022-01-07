
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct itimerval {int dummy; } ;
typedef scalar_t__ pid_t ;


 int ITIMER_PROF ;
 int O_WRONLY ;
 int RAND_cleanup () ;
 int close (int) ;
 int fflush (int ) ;
 scalar_t__ fork () ;
 char* getenv (char*) ;
 int getitimer (int ,struct itimerval*) ;
 int open (char const*,int ,int ) ;
 int setitimer (int ,struct itimerval*,int *) ;
 int stderr ;
 int stdout ;
 int strlen (char const*) ;
 int write (int,char const*,int ) ;

pid_t
fork_process(void)
{
 pid_t result;
 const char *oomfilename;
 fflush(stdout);
 fflush(stderr);
 result = fork();
 if (result == 0)
 {
  oomfilename = getenv("PG_OOM_ADJUST_FILE");

  if (oomfilename != ((void*)0))
  {




   int fd = open(oomfilename, O_WRONLY, 0);


   if (fd >= 0)
   {
    const char *oomvalue = getenv("PG_OOM_ADJUST_VALUE");
    int rc;

    if (oomvalue == ((void*)0))
     oomvalue = "0";

    rc = write(fd, oomvalue, strlen(oomvalue));
    (void) rc;
    close(fd);
   }
  }







 }

 return result;
}
