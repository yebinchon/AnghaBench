
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_18__ {int rnode; int blockNum; int forkNum; } ;
struct TYPE_21__ {TYPE_1__ tag; int state; } ;
struct TYPE_20__ {struct TYPE_20__* previous; void* arg; int callback; } ;
struct TYPE_19__ {int rd_smgr; int rd_node; } ;
typedef TYPE_2__* Relation ;
typedef char* Page ;
typedef TYPE_3__ ErrorContextCallback ;
typedef TYPE_4__ BufferDesc ;


 int BM_DIRTY ;
 int BM_JUST_DIRTIED ;
 int BM_VALID ;
 int BufferDescriptorGetContentLock (TYPE_4__*) ;
 int CurrentResourceOwner ;
 int FlushBuffer (TYPE_4__*,int ) ;
 TYPE_4__* GetBufferDescriptor (int) ;
 TYPE_4__* GetLocalBufferDescriptor (int) ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_SHARED ;
 scalar_t__ LocalBufHdrGetBlock (TYPE_4__*) ;
 int LockBufHdr (TYPE_4__*) ;
 int NBuffers ;
 int NLocBuffer ;
 int PageSetChecksumInplace (char*,int ) ;
 int PinBuffer_Locked (TYPE_4__*) ;
 scalar_t__ RelFileNodeEquals (int ,int ) ;
 int RelationOpenSmgr (TYPE_2__*) ;
 scalar_t__ RelationUsesLocalBuffers (TYPE_2__*) ;
 int ReservePrivateRefCountEntry () ;
 int ResourceOwnerEnlargeBuffers (int ) ;
 int UnlockBufHdr (TYPE_4__*,int) ;
 int UnpinBuffer (TYPE_4__*,int) ;
 TYPE_3__* error_context_stack ;
 int local_buffer_write_error_callback ;
 int pg_atomic_read_u32 (int *) ;
 int pg_atomic_unlocked_write_u32 (int *,int) ;
 int smgrwrite (int ,int ,int ,char*,int) ;

void
FlushRelationBuffers(Relation rel)
{
 int i;
 BufferDesc *bufHdr;


 RelationOpenSmgr(rel);

 if (RelationUsesLocalBuffers(rel))
 {
  for (i = 0; i < NLocBuffer; i++)
  {
   uint32 buf_state;

   bufHdr = GetLocalBufferDescriptor(i);
   if (RelFileNodeEquals(bufHdr->tag.rnode, rel->rd_node) &&
    ((buf_state = pg_atomic_read_u32(&bufHdr->state)) &
     (BM_VALID | BM_DIRTY)) == (BM_VALID | BM_DIRTY))
   {
    ErrorContextCallback errcallback;
    Page localpage;

    localpage = (char *) LocalBufHdrGetBlock(bufHdr);


    errcallback.callback = local_buffer_write_error_callback;
    errcallback.arg = (void *) bufHdr;
    errcallback.previous = error_context_stack;
    error_context_stack = &errcallback;

    PageSetChecksumInplace(localpage, bufHdr->tag.blockNum);

    smgrwrite(rel->rd_smgr,
        bufHdr->tag.forkNum,
        bufHdr->tag.blockNum,
        localpage,
        0);

    buf_state &= ~(BM_DIRTY | BM_JUST_DIRTIED);
    pg_atomic_unlocked_write_u32(&bufHdr->state, buf_state);


    error_context_stack = errcallback.previous;
   }
  }

  return;
 }


 ResourceOwnerEnlargeBuffers(CurrentResourceOwner);

 for (i = 0; i < NBuffers; i++)
 {
  uint32 buf_state;

  bufHdr = GetBufferDescriptor(i);





  if (!RelFileNodeEquals(bufHdr->tag.rnode, rel->rd_node))
   continue;

  ReservePrivateRefCountEntry();

  buf_state = LockBufHdr(bufHdr);
  if (RelFileNodeEquals(bufHdr->tag.rnode, rel->rd_node) &&
   (buf_state & (BM_VALID | BM_DIRTY)) == (BM_VALID | BM_DIRTY))
  {
   PinBuffer_Locked(bufHdr);
   LWLockAcquire(BufferDescriptorGetContentLock(bufHdr), LW_SHARED);
   FlushBuffer(bufHdr, rel->rd_smgr);
   LWLockRelease(BufferDescriptorGetContentLock(bufHdr));
   UnpinBuffer(bufHdr, 1);
  }
  else
   UnlockBufHdr(bufHdr, buf_state);
 }
}
