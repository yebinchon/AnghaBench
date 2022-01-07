
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ launcher_pid; } ;


 TYPE_1__* LogicalRepCtx ;
 scalar_t__ MyProcPid ;

bool
IsLogicalLauncher(void)
{
 return LogicalRepCtx->launcher_pid == MyProcPid;
}
