
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ launcher_pid; } ;


 TYPE_1__* LogicalRepCtx ;
 int SIGUSR1 ;
 int kill (scalar_t__,int ) ;

__attribute__((used)) static void
ApplyLauncherWakeup(void)
{
 if (LogicalRepCtx->launcher_pid != 0)
  kill(LogicalRepCtx->launcher_pid, SIGUSR1);
}
