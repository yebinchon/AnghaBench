
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int on_commit_launcher_wakeup ;

void
ApplyLauncherWakeupAtCommit(void)
{
 if (!on_commit_launcher_wakeup)
  on_commit_launcher_wakeup = 1;
}
