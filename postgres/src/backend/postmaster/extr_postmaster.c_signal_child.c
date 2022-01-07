
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int DEBUG3 ;





 int elog (int ,char*,long,int) ;
 scalar_t__ kill (scalar_t__,int) ;

__attribute__((used)) static void
signal_child(pid_t pid, int signal)
{
 if (kill(pid, signal) < 0)
  elog(DEBUG3, "kill(%ld,%d) failed: %m", (long) pid, signal);
}
