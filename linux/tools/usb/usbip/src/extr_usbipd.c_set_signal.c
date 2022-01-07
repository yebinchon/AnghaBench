
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; int sa_mask; } ;
typedef int act ;


 int SIGCHLD ;
 int SIGINT ;
 int SIGTERM ;
 int SIG_IGN ;
 int memset (struct sigaction*,int ,int) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 int signal_handler ;

__attribute__((used)) static void set_signal(void)
{
 struct sigaction act;

 memset(&act, 0, sizeof(act));
 act.sa_handler = signal_handler;
 sigemptyset(&act.sa_mask);
 sigaction(SIGTERM, &act, ((void*)0));
 sigaction(SIGINT, &act, ((void*)0));
 act.sa_handler = SIG_IGN;
 sigaction(SIGCHLD, &act, ((void*)0));
}
