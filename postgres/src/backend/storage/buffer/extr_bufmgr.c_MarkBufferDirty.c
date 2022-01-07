
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_7__ {int shared_blks_dirtied; } ;
struct TYPE_6__ {int state; } ;
typedef TYPE_1__ BufferDesc ;
typedef scalar_t__ Buffer ;


 int Assert (int) ;
 int BM_DIRTY ;
 int BM_JUST_DIRTIED ;
 int BM_LOCKED ;
 scalar_t__ BUF_STATE_GET_REFCOUNT (int) ;
 int BufferDescriptorGetContentLock (TYPE_1__*) ;
 scalar_t__ BufferIsLocal (scalar_t__) ;
 int BufferIsPinned (scalar_t__) ;
 int BufferIsValid (scalar_t__) ;
 int ERROR ;
 TYPE_1__* GetBufferDescriptor (scalar_t__) ;
 int LWLockHeldByMeInMode (int ,int ) ;
 int LW_EXCLUSIVE ;
 int MarkLocalBufferDirty (scalar_t__) ;
 scalar_t__ VacuumCostActive ;
 int VacuumCostBalance ;
 scalar_t__ VacuumCostPageDirty ;
 int VacuumPageDirty ;
 int WaitBufHdrUnlocked (TYPE_1__*) ;
 int elog (int ,char*,scalar_t__) ;
 TYPE_2__ pgBufferUsage ;
 scalar_t__ pg_atomic_compare_exchange_u32 (int *,int*,int) ;
 int pg_atomic_read_u32 (int *) ;

void
MarkBufferDirty(Buffer buffer)
{
 BufferDesc *bufHdr;
 uint32 buf_state;
 uint32 old_buf_state;

 if (!BufferIsValid(buffer))
  elog(ERROR, "bad buffer ID: %d", buffer);

 if (BufferIsLocal(buffer))
 {
  MarkLocalBufferDirty(buffer);
  return;
 }

 bufHdr = GetBufferDescriptor(buffer - 1);

 Assert(BufferIsPinned(buffer));
 Assert(LWLockHeldByMeInMode(BufferDescriptorGetContentLock(bufHdr),
        LW_EXCLUSIVE));

 old_buf_state = pg_atomic_read_u32(&bufHdr->state);
 for (;;)
 {
  if (old_buf_state & BM_LOCKED)
   old_buf_state = WaitBufHdrUnlocked(bufHdr);

  buf_state = old_buf_state;

  Assert(BUF_STATE_GET_REFCOUNT(buf_state) > 0);
  buf_state |= BM_DIRTY | BM_JUST_DIRTIED;

  if (pg_atomic_compare_exchange_u32(&bufHdr->state, &old_buf_state,
             buf_state))
   break;
 }




 if (!(old_buf_state & BM_DIRTY))
 {
  VacuumPageDirty++;
  pgBufferUsage.shared_blks_dirtied++;
  if (VacuumCostActive)
   VacuumCostBalance += VacuumCostPageDirty;
 }
}
