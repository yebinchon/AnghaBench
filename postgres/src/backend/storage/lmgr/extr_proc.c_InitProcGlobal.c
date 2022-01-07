
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32 ;
typedef int slock_t ;
struct TYPE_9__ {int * next; } ;
struct TYPE_11__ {int pgprocno; int clogGroupNext; int procArrayGroupNext; int lockGroupMembers; int * myProcLocks; struct TYPE_11__** procgloballist; TYPE_1__ links; int backendLock; int procLatch; int sem; } ;
struct TYPE_10__ {int startupBufferPinWaitBufId; int allProcCount; TYPE_3__* walsenderFreeProcs; TYPE_3__* bgworkerFreeProcs; TYPE_3__* autovacFreeProcs; TYPE_3__* freeProcs; TYPE_3__* allPgXact; TYPE_3__* allProcs; int clogGroupFirst; int procArrayGroupFirst; int * checkpointerLatch; int * walwriterLatch; scalar_t__ startupProcPid; int * startupProc; int spins_per_delay; } ;
typedef int SHM_QUEUE ;
typedef TYPE_2__ PROC_HDR ;
typedef TYPE_3__ PGXACT ;
typedef TYPE_3__ PGPROC ;


 int Assert (int) ;
 TYPE_3__* AuxiliaryProcs ;
 int DEFAULT_SPINS_PER_DELAY ;
 int INVALID_PGPROCNO ;
 int InitSharedLatch (int *) ;
 int LWLockInitialize (int *,int ) ;
 int LWTRANCHE_PROC ;
 int MaxBackends ;
 int MaxConnections ;
 int MemSet (TYPE_3__*,int ,int) ;
 int NUM_AUXILIARY_PROCS ;
 int NUM_LOCK_PARTITIONS ;
 int PGSemaphoreCreate () ;
 TYPE_3__* PreparedXactProcs ;
 TYPE_2__* ProcGlobal ;
 int * ProcStructLock ;
 int SHMQueueInit (int *) ;
 scalar_t__ ShmemAlloc (int) ;
 scalar_t__ ShmemInitStruct (char*,int,int*) ;
 int SpinLockInit (int *) ;
 int autovacuum_max_workers ;
 int dlist_init (int *) ;
 int max_prepared_xacts ;
 int max_worker_processes ;
 int pg_atomic_init_u32 (int *,int ) ;

void
InitProcGlobal(void)
{
 PGPROC *procs;
 PGXACT *pgxacts;
 int i,
    j;
 bool found;
 uint32 TotalProcs = MaxBackends + NUM_AUXILIARY_PROCS + max_prepared_xacts;


 ProcGlobal = (PROC_HDR *)
  ShmemInitStruct("Proc Header", sizeof(PROC_HDR), &found);
 Assert(!found);




 ProcGlobal->spins_per_delay = DEFAULT_SPINS_PER_DELAY;
 ProcGlobal->freeProcs = ((void*)0);
 ProcGlobal->autovacFreeProcs = ((void*)0);
 ProcGlobal->bgworkerFreeProcs = ((void*)0);
 ProcGlobal->walsenderFreeProcs = ((void*)0);
 ProcGlobal->startupProc = ((void*)0);
 ProcGlobal->startupProcPid = 0;
 ProcGlobal->startupBufferPinWaitBufId = -1;
 ProcGlobal->walwriterLatch = ((void*)0);
 ProcGlobal->checkpointerLatch = ((void*)0);
 pg_atomic_init_u32(&ProcGlobal->procArrayGroupFirst, INVALID_PGPROCNO);
 pg_atomic_init_u32(&ProcGlobal->clogGroupFirst, INVALID_PGPROCNO);
 procs = (PGPROC *) ShmemAlloc(TotalProcs * sizeof(PGPROC));
 MemSet(procs, 0, TotalProcs * sizeof(PGPROC));
 ProcGlobal->allProcs = procs;

 ProcGlobal->allProcCount = MaxBackends + NUM_AUXILIARY_PROCS;
 pgxacts = (PGXACT *) ShmemAlloc(TotalProcs * sizeof(PGXACT));
 MemSet(pgxacts, 0, TotalProcs * sizeof(PGXACT));
 ProcGlobal->allPgXact = pgxacts;

 for (i = 0; i < TotalProcs; i++)
 {







  if (i < MaxBackends + NUM_AUXILIARY_PROCS)
  {
   procs[i].sem = PGSemaphoreCreate();
   InitSharedLatch(&(procs[i].procLatch));
   LWLockInitialize(&(procs[i].backendLock), LWTRANCHE_PROC);
  }
  procs[i].pgprocno = i;
  if (i < MaxConnections)
  {

   procs[i].links.next = (SHM_QUEUE *) ProcGlobal->freeProcs;
   ProcGlobal->freeProcs = &procs[i];
   procs[i].procgloballist = &ProcGlobal->freeProcs;
  }
  else if (i < MaxConnections + autovacuum_max_workers + 1)
  {

   procs[i].links.next = (SHM_QUEUE *) ProcGlobal->autovacFreeProcs;
   ProcGlobal->autovacFreeProcs = &procs[i];
   procs[i].procgloballist = &ProcGlobal->autovacFreeProcs;
  }
  else if (i < MaxConnections + autovacuum_max_workers + 1 + max_worker_processes)
  {

   procs[i].links.next = (SHM_QUEUE *) ProcGlobal->bgworkerFreeProcs;
   ProcGlobal->bgworkerFreeProcs = &procs[i];
   procs[i].procgloballist = &ProcGlobal->bgworkerFreeProcs;
  }
  else if (i < MaxBackends)
  {

   procs[i].links.next = (SHM_QUEUE *) ProcGlobal->walsenderFreeProcs;
   ProcGlobal->walsenderFreeProcs = &procs[i];
   procs[i].procgloballist = &ProcGlobal->walsenderFreeProcs;
  }


  for (j = 0; j < NUM_LOCK_PARTITIONS; j++)
   SHMQueueInit(&(procs[i].myProcLocks[j]));


  dlist_init(&procs[i].lockGroupMembers);





  pg_atomic_init_u32(&(procs[i].procArrayGroupNext), INVALID_PGPROCNO);
  pg_atomic_init_u32(&(procs[i].clogGroupNext), INVALID_PGPROCNO);
 }





 AuxiliaryProcs = &procs[MaxBackends];
 PreparedXactProcs = &procs[MaxBackends + NUM_AUXILIARY_PROCS];


 ProcStructLock = (slock_t *) ShmemAlloc(sizeof(slock_t));
 SpinLockInit(ProcStructLock);
}
