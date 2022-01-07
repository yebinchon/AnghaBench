
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; } ;


 int SIGALRM ;
 int SIGPIPE ;
 int SIG_IGN ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigalrm ;
 int signal (int ,int ) ;

__attribute__((used)) static void init_signals(void)
{
 struct sigaction act = {
  .sa_handler = sigalrm,
 };

 sigaction(SIGALRM, &act, ((void*)0));
 signal(SIGPIPE, SIG_IGN);
}
