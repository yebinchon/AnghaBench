
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t uint32 ;
typedef int TransactionId ;
struct TYPE_13__ {size_t pgprocno; int procArrayGroupMember; int sem; int procArrayGroupNext; int procArrayGroupMemberXid; } ;
struct TYPE_12__ {int xid; } ;
struct TYPE_11__ {int procArrayGroupFirst; } ;
typedef TYPE_1__ PROC_HDR ;
typedef TYPE_2__ PGXACT ;
typedef TYPE_3__ PGPROC ;


 int Assert (int) ;
 size_t INVALID_PGPROCNO ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_3__* MyProc ;
 int PGSemaphoreLock (int ) ;
 int PGSemaphoreUnlock (int ) ;
 int ProcArrayEndTransactionInternal (TYPE_3__*,TYPE_2__*,int ) ;
 int ProcArrayLock ;
 TYPE_1__* ProcGlobal ;
 int TransactionIdIsValid (int ) ;
 int WAIT_EVENT_PROCARRAY_GROUP_UPDATE ;
 TYPE_2__* allPgXact ;
 TYPE_3__* allProcs ;
 scalar_t__ pg_atomic_compare_exchange_u32 (int *,size_t*,size_t) ;
 size_t pg_atomic_exchange_u32 (int *,size_t) ;
 size_t pg_atomic_read_u32 (int *) ;
 int pg_atomic_write_u32 (int *,size_t) ;
 int pg_write_barrier () ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;

__attribute__((used)) static void
ProcArrayGroupClearXid(PGPROC *proc, TransactionId latestXid)
{
 PROC_HDR *procglobal = ProcGlobal;
 uint32 nextidx;
 uint32 wakeidx;


 Assert(TransactionIdIsValid(allPgXact[proc->pgprocno].xid));


 proc->procArrayGroupMember = 1;
 proc->procArrayGroupMemberXid = latestXid;
 nextidx = pg_atomic_read_u32(&procglobal->procArrayGroupFirst);
 while (1)
 {
  pg_atomic_write_u32(&proc->procArrayGroupNext, nextidx);

  if (pg_atomic_compare_exchange_u32(&procglobal->procArrayGroupFirst,
             &nextidx,
             (uint32) proc->pgprocno))
   break;
 }







 if (nextidx != INVALID_PGPROCNO)
 {
  int extraWaits = 0;


  pgstat_report_wait_start(WAIT_EVENT_PROCARRAY_GROUP_UPDATE);
  for (;;)
  {

   PGSemaphoreLock(proc->sem);
   if (!proc->procArrayGroupMember)
    break;
   extraWaits++;
  }
  pgstat_report_wait_end();

  Assert(pg_atomic_read_u32(&proc->procArrayGroupNext) == INVALID_PGPROCNO);


  while (extraWaits-- > 0)
   PGSemaphoreUnlock(proc->sem);
  return;
 }


 LWLockAcquire(ProcArrayLock, LW_EXCLUSIVE);






 nextidx = pg_atomic_exchange_u32(&procglobal->procArrayGroupFirst,
          INVALID_PGPROCNO);


 wakeidx = nextidx;


 while (nextidx != INVALID_PGPROCNO)
 {
  PGPROC *proc = &allProcs[nextidx];
  PGXACT *pgxact = &allPgXact[nextidx];

  ProcArrayEndTransactionInternal(proc, pgxact, proc->procArrayGroupMemberXid);


  nextidx = pg_atomic_read_u32(&proc->procArrayGroupNext);
 }


 LWLockRelease(ProcArrayLock);
 while (wakeidx != INVALID_PGPROCNO)
 {
  PGPROC *proc = &allProcs[wakeidx];

  wakeidx = pg_atomic_read_u32(&proc->procArrayGroupNext);
  pg_atomic_write_u32(&proc->procArrayGroupNext, INVALID_PGPROCNO);


  pg_write_barrier();

  proc->procArrayGroupMember = 0;

  if (proc != MyProc)
   PGSemaphoreUnlock(proc->sem);
 }
}
