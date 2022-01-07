
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_10__ {scalar_t__ pid; int elem; } ;
struct TYPE_9__ {int bgw_name; } ;
struct TYPE_8__ {scalar_t__ rw_pid; TYPE_3__* rw_backend; TYPE_2__ rw_worker; void* rw_crashed_at; int rw_child_slot; int rw_shmem_slot; } ;
typedef TYPE_1__ RegisteredBgWorker ;
typedef int BackgroundWorker ;


 int Assert (int) ;
 int BackendList ;
 int ClosePostmasterPorts (int) ;
 int DEBUG1 ;
 void* GetCurrentTimestamp () ;
 int InitPostmasterChild () ;
 int LOG ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int MemoryContextDelete (int *) ;
 int MemoryContextSwitchTo (int ) ;
 int * MyBgworkerEntry ;
 int * PostmasterContext ;
 int ReleasePostmasterChildSlot (int ) ;
 int ReportBackgroundWorkerPID (TYPE_1__*) ;
 int ShmemBackendArrayAdd (TYPE_3__*) ;
 int StartBackgroundWorker () ;
 int TopMemoryContext ;
 int assign_backendlist_entry (TYPE_1__*) ;
 scalar_t__ bgworker_forkexec (int ) ;
 int dlist_push_head (int *,int *) ;
 int ereport (int ,int ) ;
 int errmsg (char*,...) ;
 int exit (int) ;
 scalar_t__ fork_process () ;
 int free (TYPE_3__*) ;
 int memcpy (int *,TYPE_2__*,int) ;

__attribute__((used)) static bool
do_start_bgworker(RegisteredBgWorker *rw)
{
 pid_t worker_pid;

 Assert(rw->rw_pid == 0);
 if (!assign_backendlist_entry(rw))
 {
  rw->rw_crashed_at = GetCurrentTimestamp();
  return 0;
 }

 ereport(DEBUG1,
   (errmsg("starting background worker process \"%s\"",
     rw->rw_worker.bgw_name)));




 switch ((worker_pid = fork_process()))

 {
  case -1:

   ereport(LOG,
     (errmsg("could not fork worker process: %m")));

   ReleasePostmasterChildSlot(rw->rw_child_slot);
   rw->rw_child_slot = 0;
   free(rw->rw_backend);
   rw->rw_backend = ((void*)0);

   rw->rw_crashed_at = GetCurrentTimestamp();
   break;


  case 0:

   InitPostmasterChild();


   ClosePostmasterPorts(0);





   MyBgworkerEntry = (BackgroundWorker *)
    MemoryContextAlloc(TopMemoryContext, sizeof(BackgroundWorker));
   memcpy(MyBgworkerEntry, &rw->rw_worker, sizeof(BackgroundWorker));


   MemoryContextSwitchTo(TopMemoryContext);
   MemoryContextDelete(PostmasterContext);
   PostmasterContext = ((void*)0);

   StartBackgroundWorker();

   exit(1);
   break;

  default:

   rw->rw_pid = worker_pid;
   rw->rw_backend->pid = rw->rw_pid;
   ReportBackgroundWorkerPID(rw);

   dlist_push_head(&BackendList, &rw->rw_backend->elem);



   return 1;
 }

 return 0;
}
