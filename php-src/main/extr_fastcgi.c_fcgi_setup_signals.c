
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {scalar_t__ sa_handler; scalar_t__ sa_flags; int sa_mask; } ;


 int SIGPIPE ;
 int SIGTERM ;
 int SIGUSR1 ;
 scalar_t__ SIG_DFL ;
 scalar_t__ fcgi_signal_handler ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void fcgi_setup_signals(void)
{
 struct sigaction new_sa, old_sa;

 sigemptyset(&new_sa.sa_mask);
 new_sa.sa_flags = 0;
 new_sa.sa_handler = fcgi_signal_handler;
 sigaction(SIGUSR1, &new_sa, ((void*)0));
 sigaction(SIGTERM, &new_sa, ((void*)0));
 sigaction(SIGPIPE, ((void*)0), &old_sa);
 if (old_sa.sa_handler == SIG_DFL) {
  sigaction(SIGPIPE, &new_sa, ((void*)0));
 }
}
