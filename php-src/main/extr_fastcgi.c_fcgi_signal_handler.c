
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTERM ;
 int SIGUSR1 ;
 int in_shutdown ;

__attribute__((used)) static void fcgi_signal_handler(int signo)
{
 if (signo == SIGUSR1 || signo == SIGTERM) {
  in_shutdown = 1;
 }
}
