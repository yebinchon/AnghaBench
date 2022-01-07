
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
typedef int pid_t ;


 int F_NOWAIT ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTSTP ;
 int SIG_DFL ;
 int SIG_IGN ;
 int fork () ;
 void* oldsighup ;
 void* oldsigtstp ;
 int perror (char*) ;
 int setsid () ;
 void* signal (int ,int ) ;

__attribute__((used)) static pid_t xfork(uchar flag)
{
 pid_t p = fork();

 if (p > 0) {

  oldsighup = signal(SIGHUP, SIG_IGN);
  oldsigtstp = signal(SIGTSTP, SIG_DFL);
 } else if (p == 0) {

  signal(SIGHUP, SIG_DFL);
  signal(SIGINT, SIG_DFL);
  signal(SIGQUIT, SIG_DFL);
  signal(SIGTSTP, SIG_DFL);

  if (flag & F_NOWAIT)
   setsid();
 }

 if (p == -1)
  perror("fork");
 return p;
}
