
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
typedef int pid_t ;


 int DPRINTF_D (int) ;
 int F_NOWAIT ;
 int SIGHUP ;
 int SIGTSTP ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int oldsighup ;
 int oldsigtstp ;
 int signal (int ,int ) ;
 int waitpid (int ,int*,int ) ;

__attribute__((used)) static int join(pid_t p, uchar flag)
{
 int status = 0xFFFF;

 if (!(flag & F_NOWAIT)) {

  do {
  } while (waitpid(p, &status, 0) == -1);

  if (WIFEXITED(status)) {
   status = WEXITSTATUS(status);
   DPRINTF_D(status);
  }
 }


 signal(SIGHUP, oldsighup);
 signal(SIGTSTP, oldsigtstp);

 return status;
}
