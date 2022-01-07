
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ pid_t ;
struct TYPE_16__ {TYPE_4__* slot; TYPE_5__* AH; } ;
typedef TYPE_2__ WorkerInfo ;
typedef int TocEntry ;
struct TYPE_21__ {TYPE_3__* pstate; } ;
struct TYPE_20__ {int am_worker; } ;
struct TYPE_15__ {int numWorkers; } ;
struct TYPE_19__ {int * connection; TYPE_1__ public; } ;
struct TYPE_18__ {int pipeRead; int pipeWrite; int pipeRevRead; int pipeRevWrite; uintptr_t hThread; scalar_t__ pid; int threadId; int * callback_data; int * callback; int * AH; int workerStatus; } ;
struct TYPE_17__ {int numWorkers; TYPE_4__* parallelSlot; int ** te; } ;
typedef TYPE_3__ ParallelState ;
typedef TYPE_4__ ParallelSlot ;
typedef TYPE_5__ ArchiveHandle ;


 int Assert (int) ;
 size_t PIPE_READ ;
 size_t PIPE_WRITE ;
 int RunWorker (TYPE_5__*,TYPE_4__*) ;
 int SIGPIPE ;
 int SIG_IGN ;
 int WRKR_IDLE ;
 uintptr_t _beginthreadex (int *,int ,void*,TYPE_2__*,int ,int *) ;
 int closesocket (int) ;
 int exit (int ) ;
 int fatal (char*) ;
 int fflush (int *) ;
 scalar_t__ fork () ;
 int getLocalPQExpBuffer ;
 int getThreadLocalPQExpBuffer ;
 scalar_t__ getpid () ;
 int init_spawned_worker_win32 ;
 scalar_t__ pg_malloc (int) ;
 scalar_t__ pg_malloc0 (int) ;
 scalar_t__ pgpipe (int*) ;
 int pqsignal (int ,int ) ;
 int set_archive_cancel_info (TYPE_5__*,int *) ;
 int set_cancel_pstate (TYPE_3__*) ;
 TYPE_7__ shutdown_info ;
 TYPE_6__ signal_info ;

ParallelState *
ParallelBackupStart(ArchiveHandle *AH)
{
 ParallelState *pstate;
 int i;

 Assert(AH->public.numWorkers > 0);

 pstate = (ParallelState *) pg_malloc(sizeof(ParallelState));

 pstate->numWorkers = AH->public.numWorkers;
 pstate->te = ((void*)0);
 pstate->parallelSlot = ((void*)0);

 if (AH->public.numWorkers == 1)
  return pstate;

 pstate->te = (TocEntry **)
  pg_malloc0(pstate->numWorkers * sizeof(TocEntry *));
 pstate->parallelSlot = (ParallelSlot *)
  pg_malloc0(pstate->numWorkers * sizeof(ParallelSlot));
 shutdown_info.pstate = pstate;
 set_archive_cancel_info(AH, ((void*)0));


 fflush(((void*)0));


 for (i = 0; i < pstate->numWorkers; i++)
 {




  pid_t pid;

  ParallelSlot *slot = &(pstate->parallelSlot[i]);
  int pipeMW[2],
     pipeWM[2];


  if (pgpipe(pipeMW) < 0 || pgpipe(pipeWM) < 0)
   fatal("could not create communication channels: %m");

  pstate->te[i] = ((void*)0);

  slot->workerStatus = WRKR_IDLE;
  slot->AH = ((void*)0);
  slot->callback = ((void*)0);
  slot->callback_data = ((void*)0);


  slot->pipeRead = pipeWM[PIPE_READ];
  slot->pipeWrite = pipeMW[PIPE_WRITE];

  slot->pipeRevRead = pipeMW[PIPE_READ];
  slot->pipeRevWrite = pipeWM[PIPE_WRITE];
  pid = fork();
  if (pid == 0)
  {

   int j;


   slot->pid = getpid();


   signal_info.am_worker = 1;


   closesocket(pipeWM[PIPE_READ]);

   closesocket(pipeMW[PIPE_WRITE]);





   for (j = 0; j < i; j++)
   {
    closesocket(pstate->parallelSlot[j].pipeRead);
    closesocket(pstate->parallelSlot[j].pipeWrite);
   }


   RunWorker(AH, slot);


   exit(0);
  }
  else if (pid < 0)
  {

   fatal("could not create worker process: %m");
  }


  slot->pid = pid;


  closesocket(pipeMW[PIPE_READ]);

  closesocket(pipeWM[PIPE_WRITE]);

 }







 pqsignal(SIGPIPE, SIG_IGN);





 set_archive_cancel_info(AH, AH->connection);







 set_cancel_pstate(pstate);

 return pstate;
}
