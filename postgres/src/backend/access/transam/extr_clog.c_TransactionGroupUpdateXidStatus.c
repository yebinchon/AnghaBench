
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32 ;
typedef int XidStatus ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_7__ {int xids; } ;
struct TYPE_10__ {int clogGroupMember; int clogGroupMemberPage; int sem; int clogGroupNext; int clogGroupMemberLsn; int clogGroupMemberXidStatus; TYPE_1__ subxids; int clogGroupMemberXid; scalar_t__ pgprocno; } ;
struct TYPE_9__ {int nxids; int overflowed; } ;
struct TYPE_8__ {TYPE_4__* allProcs; TYPE_3__* allPgXact; int clogGroupFirst; } ;
typedef TYPE_2__ PROC_HDR ;
typedef TYPE_3__ PGXACT ;
typedef TYPE_4__ PGPROC ;


 int Assert (int) ;
 int CLogControlLock ;
 size_t INVALID_PGPROCNO ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 TYPE_4__* MyProc ;
 int PGSemaphoreLock (int ) ;
 int PGSemaphoreUnlock (int ) ;
 TYPE_2__* ProcGlobal ;
 int TransactionIdIsValid (int ) ;
 int TransactionIdSetPageStatusInternal (int ,int ,int ,int ,int ,int) ;
 int WAIT_EVENT_CLOG_GROUP_UPDATE ;
 scalar_t__ pg_atomic_compare_exchange_u32 (int *,size_t*,size_t) ;
 size_t pg_atomic_exchange_u32 (int *,size_t) ;
 size_t pg_atomic_read_u32 (int *) ;
 int pg_atomic_write_u32 (int *,size_t) ;
 int pg_write_barrier () ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;

__attribute__((used)) static bool
TransactionGroupUpdateXidStatus(TransactionId xid, XidStatus status,
        XLogRecPtr lsn, int pageno)
{
 volatile PROC_HDR *procglobal = ProcGlobal;
 PGPROC *proc = MyProc;
 uint32 nextidx;
 uint32 wakeidx;


 Assert(TransactionIdIsValid(xid));





 proc->clogGroupMember = 1;
 proc->clogGroupMemberXid = xid;
 proc->clogGroupMemberXidStatus = status;
 proc->clogGroupMemberPage = pageno;
 proc->clogGroupMemberLsn = lsn;

 nextidx = pg_atomic_read_u32(&procglobal->clogGroupFirst);

 while (1)
 {
  if (nextidx != INVALID_PGPROCNO &&
   ProcGlobal->allProcs[nextidx].clogGroupMemberPage != proc->clogGroupMemberPage)
  {
   proc->clogGroupMember = 0;
   return 0;
  }

  pg_atomic_write_u32(&proc->clogGroupNext, nextidx);

  if (pg_atomic_compare_exchange_u32(&procglobal->clogGroupFirst,
             &nextidx,
             (uint32) proc->pgprocno))
   break;
 }







 if (nextidx != INVALID_PGPROCNO)
 {
  int extraWaits = 0;


  pgstat_report_wait_start(WAIT_EVENT_CLOG_GROUP_UPDATE);
  for (;;)
  {

   PGSemaphoreLock(proc->sem);
   if (!proc->clogGroupMember)
    break;
   extraWaits++;
  }
  pgstat_report_wait_end();

  Assert(pg_atomic_read_u32(&proc->clogGroupNext) == INVALID_PGPROCNO);


  while (extraWaits-- > 0)
   PGSemaphoreUnlock(proc->sem);
  return 1;
 }


 LWLockAcquire(CLogControlLock, LW_EXCLUSIVE);






 nextidx = pg_atomic_exchange_u32(&procglobal->clogGroupFirst,
          INVALID_PGPROCNO);


 wakeidx = nextidx;


 while (nextidx != INVALID_PGPROCNO)
 {
  PGPROC *proc = &ProcGlobal->allProcs[nextidx];
  PGXACT *pgxact = &ProcGlobal->allPgXact[nextidx];





  Assert(!pgxact->overflowed);

  TransactionIdSetPageStatusInternal(proc->clogGroupMemberXid,
             pgxact->nxids,
             proc->subxids.xids,
             proc->clogGroupMemberXidStatus,
             proc->clogGroupMemberLsn,
             proc->clogGroupMemberPage);


  nextidx = pg_atomic_read_u32(&proc->clogGroupNext);
 }


 LWLockRelease(CLogControlLock);






 while (wakeidx != INVALID_PGPROCNO)
 {
  PGPROC *proc = &ProcGlobal->allProcs[wakeidx];

  wakeidx = pg_atomic_read_u32(&proc->clogGroupNext);
  pg_atomic_write_u32(&proc->clogGroupNext, INVALID_PGPROCNO);


  pg_write_barrier();

  proc->clogGroupMember = 0;

  if (proc != MyProc)
   PGSemaphoreUnlock(proc->sem);
 }

 return 1;
}
