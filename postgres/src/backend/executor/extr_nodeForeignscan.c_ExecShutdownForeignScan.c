
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* ShutdownForeignScan ) (TYPE_1__*) ;} ;
struct TYPE_5__ {TYPE_2__* fdwroutine; } ;
typedef TYPE_1__ ForeignScanState ;
typedef TYPE_2__ FdwRoutine ;


 int stub1 (TYPE_1__*) ;

void
ExecShutdownForeignScan(ForeignScanState *node)
{
 FdwRoutine *fdwroutine = node->fdwroutine;

 if (fdwroutine->ShutdownForeignScan)
  fdwroutine->ShutdownForeignScan(node);
}
