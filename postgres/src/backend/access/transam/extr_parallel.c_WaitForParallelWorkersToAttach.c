
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int shm_mq ;
typedef int pid_t ;
struct TYPE_5__ {int nworkers_launched; int* known_attached_workers; int nknown_attached_workers; TYPE_1__* worker; } ;
struct TYPE_4__ {int * error_mqh; int bgwhandle; } ;
typedef TYPE_2__ ParallelContext ;
typedef scalar_t__ BgwHandleStatus ;


 int Assert (int) ;
 scalar_t__ BGWH_STARTED ;
 scalar_t__ BGWH_STOPPED ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ;
 int ERROR ;
 scalar_t__ GetBackgroundWorkerPid (int ,int *) ;
 int MyLatch ;
 int ResetLatch (int ) ;
 int WAIT_EVENT_BGWORKER_STARTUP ;
 int WL_EXIT_ON_PM_DEATH ;
 int WL_LATCH_SET ;
 int WaitLatch (int ,int,int,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int * shm_mq_get_queue (int *) ;
 int * shm_mq_get_sender (int *) ;

void
WaitForParallelWorkersToAttach(ParallelContext *pcxt)
{
 int i;


 if (pcxt->nworkers_launched == 0)
  return;

 for (;;)
 {




  CHECK_FOR_INTERRUPTS();

  for (i = 0; i < pcxt->nworkers_launched; ++i)
  {
   BgwHandleStatus status;
   shm_mq *mq;
   int rc;
   pid_t pid;

   if (pcxt->known_attached_workers[i])
    continue;





   if (pcxt->worker[i].error_mqh == ((void*)0))
   {
    pcxt->known_attached_workers[i] = 1;
    ++pcxt->nknown_attached_workers;
    continue;
   }

   status = GetBackgroundWorkerPid(pcxt->worker[i].bgwhandle, &pid);
   if (status == BGWH_STARTED)
   {

    mq = shm_mq_get_queue(pcxt->worker[i].error_mqh);
    if (shm_mq_get_sender(mq) != ((void*)0))
    {

     pcxt->known_attached_workers[i] = 1;
     ++pcxt->nknown_attached_workers;
    }
   }
   else if (status == BGWH_STOPPED)
   {




    mq = shm_mq_get_queue(pcxt->worker[i].error_mqh);
    if (shm_mq_get_sender(mq) == ((void*)0))
     ereport(ERROR,
       (errcode(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
        errmsg("parallel worker failed to initialize"),
        errhint("More details may be available in the server log.")));

    pcxt->known_attached_workers[i] = 1;
    ++pcxt->nknown_attached_workers;
   }
   else
   {






    rc = WaitLatch(MyLatch,
          WL_LATCH_SET | WL_EXIT_ON_PM_DEATH,
          -1, WAIT_EVENT_BGWORKER_STARTUP);

    if (rc & WL_LATCH_SET)
     ResetLatch(MyLatch);
   }
  }


  if (pcxt->nknown_attached_workers >= pcxt->nworkers_launched)
  {
   Assert(pcxt->nknown_attached_workers == pcxt->nworkers_launched);
   break;
  }
 }
}
