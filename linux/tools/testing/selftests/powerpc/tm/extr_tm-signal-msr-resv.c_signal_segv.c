
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGSEGV ;
 int _exit (int) ;
 scalar_t__ segv_expected ;

void signal_segv(int signum)
{
 if (segv_expected && (signum == SIGSEGV))
  _exit(0);
 _exit(1);
}
