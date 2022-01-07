
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTERM ;
 int exit (int ) ;
 int exit_signal ;
 int fprintf (int ,char*,int) ;
 int getpid () ;
 int kill (int ,int ) ;
 int old_term ;
 scalar_t__ parent ;
 scalar_t__ parent_waiting ;
 int pgroup ;
 int sigaction (int ,int *,int ) ;
 int stderr ;

void fastcgi_cleanup(int signal)
{




 sigaction(SIGTERM, &old_term, 0);


 kill(-pgroup, SIGTERM);

 if (parent && parent_waiting) {
  exit_signal = 1;
 } else {
  exit(0);
 }
}
