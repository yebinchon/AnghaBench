
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int shm_mq ;
typedef int pid_t ;
struct TYPE_8__ {scalar_t__ last_xlog_end; } ;
struct TYPE_7__ {int nworkers_launched; int * toc; TYPE_1__* worker; scalar_t__* known_attached_workers; } ;
struct TYPE_6__ {int * error_mqh; int * bgwhandle; } ;
typedef TYPE_2__ ParallelContext ;
typedef TYPE_3__ FixedParallelState ;


 int Assert (int) ;
 scalar_t__ BGWH_STOPPED ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 scalar_t__ GetBackgroundWorkerPid (int *,int *) ;
 int MyLatch ;
 int PARALLEL_KEY_FIXED ;
 int ResetLatch (int ) ;
 int WAIT_EVENT_PARALLEL_FINISH ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WaitLatch (int ,int,int,int ) ;
 scalar_t__ XactLastRecEnd ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int * shm_mq_get_queue (int *) ;
 int * shm_mq_get_sender (int *) ;
 TYPE_3__* shm_toc_lookup (int *,int ,int) ;

void
WaitForParallelWorkersToFinish(ParallelContext *pcxt)
{
 for (;;)
 {
  bool anyone_alive = 0;
  int nfinished = 0;
  int i;






  CHECK_FOR_INTERRUPTS();

  for (i = 0; i < pcxt->nworkers_launched; ++i)
  {






   if (pcxt->worker[i].error_mqh == ((void*)0))
    ++nfinished;
   else if (pcxt->known_attached_workers[i])
   {
    anyone_alive = 1;
    break;
   }
  }

  if (!anyone_alive)
  {

   if (nfinished >= pcxt->nworkers_launched)
   {
    Assert(nfinished == pcxt->nworkers_launched);
    break;
   }







   for (i = 0; i < pcxt->nworkers_launched; ++i)
   {
    pid_t pid;
    shm_mq *mq;






    if (pcxt->worker[i].error_mqh == ((void*)0) ||
     pcxt->worker[i].bgwhandle == ((void*)0) ||
     GetBackgroundWorkerPid(pcxt->worker[i].bgwhandle,
             &pid) != BGWH_STOPPED)
     continue;
    mq = shm_mq_get_queue(pcxt->worker[i].error_mqh);
    if (shm_mq_get_sender(mq) == ((void*)0))
     ereport(ERROR,
       (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
        errmsg("parallel worker failed to initialize"),
        errhint("More details may be available in the server log.")));
   }
  }

  (void) WaitLatch(MyLatch, WL_LATCH_SET | WL_EXIT_ON_PM_DEATH, -1,
       WAIT_EVENT_PARALLEL_FINISH);
  ResetLatch(MyLatch);
 }

 if (pcxt->toc != ((void*)0))
 {
  FixedParallelState *fps;

  fps = shm_toc_lookup(pcxt->toc, PARALLEL_KEY_FIXED, 0);
  if (fps->last_xlog_end > XactLastRecEnd)
   XactLastRecEnd = fps->last_xlog_end;
 }
}
