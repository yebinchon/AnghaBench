
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int relmutex; struct TYPE_5__* workers; } ;
typedef TYPE_1__ LogicalRepWorker ;
typedef TYPE_1__ LogicalRepCtxStruct ;


 int ApplyLauncherShmemSize () ;
 TYPE_1__* LogicalRepCtx ;
 scalar_t__ ShmemInitStruct (char*,int,int*) ;
 int SpinLockInit (int *) ;
 int max_logical_replication_workers ;
 int memset (TYPE_1__*,int ,int) ;

void
ApplyLauncherShmemInit(void)
{
 bool found;

 LogicalRepCtx = (LogicalRepCtxStruct *)
  ShmemInitStruct("Logical Replication Launcher Data",
      ApplyLauncherShmemSize(),
      &found);

 if (!found)
 {
  int slot;

  memset(LogicalRepCtx, 0, ApplyLauncherShmemSize());


  for (slot = 0; slot < max_logical_replication_workers; slot++)
  {
   LogicalRepWorker *worker = &LogicalRepCtx->workers[slot];

   memset(worker, 0, sizeof(LogicalRepWorker));
   SpinLockInit(&worker->relmutex);
  }
 }
}
