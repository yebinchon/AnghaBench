
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pcxt; int snapshot; } ;
typedef TYPE_1__ BTLeader ;


 int DestroyParallelContext (int ) ;
 int ExitParallelMode () ;
 scalar_t__ IsMVCCSnapshot (int ) ;
 int UnregisterSnapshot (int ) ;
 int WaitForParallelWorkersToFinish (int ) ;

__attribute__((used)) static void
_bt_end_parallel(BTLeader *btleader)
{

 WaitForParallelWorkersToFinish(btleader->pcxt);

 if (IsMVCCSnapshot(btleader->snapshot))
  UnregisterSnapshot(btleader->snapshot);
 DestroyParallelContext(btleader->pcxt);
 ExitParallelMode();
}
