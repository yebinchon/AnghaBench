
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
typedef int XLogRecPtr ;
struct TYPE_10__ {int delayChkpt; } ;
struct TYPE_9__ {int shared_blks_dirtied; } ;
struct TYPE_8__ {int state; } ;
typedef int Page ;
typedef TYPE_1__ BufferDesc ;
typedef scalar_t__ Buffer ;


 int Assert (int) ;
 int BM_DIRTY ;
 int BM_JUST_DIRTIED ;
 int BM_PERMANENT ;
 scalar_t__ BUF_STATE_GET_REFCOUNT (int) ;
 int BufferDescriptorGetContentLock (TYPE_1__*) ;
 int BufferGetPage (scalar_t__) ;
 scalar_t__ BufferIsLocal (scalar_t__) ;
 int BufferIsValid (scalar_t__) ;
 int ERROR ;
 TYPE_1__* GetBufferDescriptor (scalar_t__) ;
 scalar_t__ GetPrivateRefCount (scalar_t__) ;
 int InvalidXLogRecPtr ;
 int LWLockHeldByMe (int ) ;
 int LockBufHdr (TYPE_1__*) ;
 int MarkLocalBufferDirty (scalar_t__) ;
 TYPE_4__* MyPgXact ;
 int PageSetLSN (int ,int ) ;
 scalar_t__ RecoveryInProgress () ;
 int UnlockBufHdr (TYPE_1__*,int) ;
 scalar_t__ VacuumCostActive ;
 int VacuumCostBalance ;
 scalar_t__ VacuumCostPageDirty ;
 int VacuumPageDirty ;
 scalar_t__ XLogHintBitIsNeeded () ;
 int XLogRecPtrIsInvalid (int ) ;
 int XLogSaveBufferForHint (scalar_t__,int) ;
 int elog (int ,char*,scalar_t__) ;
 TYPE_2__ pgBufferUsage ;
 int pg_atomic_read_u32 (int *) ;

void
MarkBufferDirtyHint(Buffer buffer, bool buffer_std)
{
 BufferDesc *bufHdr;
 Page page = BufferGetPage(buffer);

 if (!BufferIsValid(buffer))
  elog(ERROR, "bad buffer ID: %d", buffer);

 if (BufferIsLocal(buffer))
 {
  MarkLocalBufferDirty(buffer);
  return;
 }

 bufHdr = GetBufferDescriptor(buffer - 1);

 Assert(GetPrivateRefCount(buffer) > 0);

 Assert(LWLockHeldByMe(BufferDescriptorGetContentLock(bufHdr)));
 if ((pg_atomic_read_u32(&bufHdr->state) & (BM_DIRTY | BM_JUST_DIRTIED)) !=
  (BM_DIRTY | BM_JUST_DIRTIED))
 {
  XLogRecPtr lsn = InvalidXLogRecPtr;
  bool dirtied = 0;
  bool delayChkpt = 0;
  uint32 buf_state;
  if (XLogHintBitIsNeeded() &&
   (pg_atomic_read_u32(&bufHdr->state) & BM_PERMANENT))
  {







   if (RecoveryInProgress())
    return;
   MyPgXact->delayChkpt = delayChkpt = 1;
   lsn = XLogSaveBufferForHint(buffer, buffer_std);
  }

  buf_state = LockBufHdr(bufHdr);

  Assert(BUF_STATE_GET_REFCOUNT(buf_state) > 0);

  if (!(buf_state & BM_DIRTY))
  {
   dirtied = 1;
   if (!XLogRecPtrIsInvalid(lsn))
    PageSetLSN(page, lsn);
  }

  buf_state |= BM_DIRTY | BM_JUST_DIRTIED;
  UnlockBufHdr(bufHdr, buf_state);

  if (delayChkpt)
   MyPgXact->delayChkpt = 0;

  if (dirtied)
  {
   VacuumPageDirty++;
   pgBufferUsage.shared_blks_dirtied++;
   if (VacuumCostActive)
    VacuumCostBalance += VacuumCostPageDirty;
  }
 }
}
