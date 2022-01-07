
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ current_buf; } ;
typedef scalar_t__ Size ;
typedef int Relation ;
typedef int Page ;
typedef TYPE_1__* BulkInsertState ;
typedef scalar_t__ Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferGetBlockNumber (scalar_t__) ;
 int BufferGetPage (scalar_t__) ;
 int BufferGetPageSize (scalar_t__) ;
 int ConditionalLockBuffer (scalar_t__) ;
 int ConditionalLockRelationForExtension (int ,int ) ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int ExclusiveLock ;
 scalar_t__ GetPageWithFreeSpace (int ,scalar_t__) ;
 int GetVisibilityMapPins (int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;
 int HEAP_DEFAULT_FILLFACTOR ;
 int HEAP_INSERT_SKIP_FSM ;
 scalar_t__ InvalidBlockNumber ;
 scalar_t__ InvalidBuffer ;
 int LockBuffer (scalar_t__,int ) ;
 int LockRelationForExtension (int ,int ) ;
 scalar_t__ MAXALIGN (scalar_t__) ;
 int MarkBufferDirty (scalar_t__) ;
 scalar_t__ MaxHeapTupleSize ;
 int PANIC ;
 scalar_t__ P_NEW ;
 scalar_t__ PageGetHeapFreeSpace (int ) ;
 int PageInit (int ,int ,int ) ;
 scalar_t__ PageIsAllVisible (int ) ;
 scalar_t__ PageIsNew (int ) ;
 int RBM_NORMAL ;
 int RBM_ZERO_AND_LOCK ;
 int RELATION_IS_LOCAL (int ) ;
 scalar_t__ ReadBuffer (int ,scalar_t__) ;
 scalar_t__ ReadBufferBI (int ,scalar_t__,int ,TYPE_1__*) ;
 scalar_t__ RecordAndGetPageWithFreeSpace (int ,scalar_t__,scalar_t__,scalar_t__) ;
 int RelationAddExtraBlocks (int ,TYPE_1__*) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationGetTargetBlock (int ) ;
 scalar_t__ RelationGetTargetPageFreeSpace (int ,int ) ;
 int RelationSetTargetBlock (int ,scalar_t__) ;
 int ReleaseBuffer (scalar_t__) ;
 int UnlockRelationForExtension (int ,int ) ;
 int UnlockReleaseBuffer (scalar_t__) ;
 int elog (int ,char*,scalar_t__,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int visibilitymap_pin (int ,scalar_t__,scalar_t__*) ;

Buffer
RelationGetBufferForTuple(Relation relation, Size len,
        Buffer otherBuffer, int options,
        BulkInsertState bistate,
        Buffer *vmbuffer, Buffer *vmbuffer_other)
{
 bool use_fsm = !(options & HEAP_INSERT_SKIP_FSM);
 Buffer buffer = InvalidBuffer;
 Page page;
 Size pageFreeSpace = 0,
    saveFreeSpace = 0;
 BlockNumber targetBlock,
    otherBlock;
 bool needLock;

 len = MAXALIGN(len);


 Assert(otherBuffer == InvalidBuffer || !bistate);




 if (len > MaxHeapTupleSize)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("row is too big: size %zu, maximum size %zu",
      len, MaxHeapTupleSize)));


 saveFreeSpace = RelationGetTargetPageFreeSpace(relation,
               HEAP_DEFAULT_FILLFACTOR);

 if (otherBuffer != InvalidBuffer)
  otherBlock = BufferGetBlockNumber(otherBuffer);
 else
  otherBlock = InvalidBlockNumber;
 if (len + saveFreeSpace > MaxHeapTupleSize)
 {

  targetBlock = InvalidBlockNumber;
  use_fsm = 0;
 }
 else if (bistate && bistate->current_buf != InvalidBuffer)
  targetBlock = BufferGetBlockNumber(bistate->current_buf);
 else
  targetBlock = RelationGetTargetBlock(relation);

 if (targetBlock == InvalidBlockNumber && use_fsm)
 {




  targetBlock = GetPageWithFreeSpace(relation, len + saveFreeSpace);






  if (targetBlock == InvalidBlockNumber)
  {
   BlockNumber nblocks = RelationGetNumberOfBlocks(relation);

   if (nblocks > 0)
    targetBlock = nblocks - 1;
  }
 }

loop:
 while (targetBlock != InvalidBlockNumber)
 {
  if (otherBuffer == InvalidBuffer)
  {

   buffer = ReadBufferBI(relation, targetBlock, RBM_NORMAL, bistate);
   if (PageIsAllVisible(BufferGetPage(buffer)))
    visibilitymap_pin(relation, targetBlock, vmbuffer);
   LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);
  }
  else if (otherBlock == targetBlock)
  {

   buffer = otherBuffer;
   if (PageIsAllVisible(BufferGetPage(buffer)))
    visibilitymap_pin(relation, targetBlock, vmbuffer);
   LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);
  }
  else if (otherBlock < targetBlock)
  {

   buffer = ReadBuffer(relation, targetBlock);
   if (PageIsAllVisible(BufferGetPage(buffer)))
    visibilitymap_pin(relation, targetBlock, vmbuffer);
   LockBuffer(otherBuffer, BUFFER_LOCK_EXCLUSIVE);
   LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);
  }
  else
  {

   buffer = ReadBuffer(relation, targetBlock);
   if (PageIsAllVisible(BufferGetPage(buffer)))
    visibilitymap_pin(relation, targetBlock, vmbuffer);
   LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);
   LockBuffer(otherBuffer, BUFFER_LOCK_EXCLUSIVE);
  }
  if (otherBuffer == InvalidBuffer || targetBlock <= otherBlock)
   GetVisibilityMapPins(relation, buffer, otherBuffer,
         targetBlock, otherBlock, vmbuffer,
         vmbuffer_other);
  else
   GetVisibilityMapPins(relation, otherBuffer, buffer,
         otherBlock, targetBlock, vmbuffer_other,
         vmbuffer);





  page = BufferGetPage(buffer);







  if (PageIsNew(page))
  {
   PageInit(page, BufferGetPageSize(buffer), 0);
   MarkBufferDirty(buffer);
  }

  pageFreeSpace = PageGetHeapFreeSpace(page);
  if (len + saveFreeSpace <= pageFreeSpace)
  {

   RelationSetTargetBlock(relation, targetBlock);
   return buffer;
  }







  LockBuffer(buffer, BUFFER_LOCK_UNLOCK);
  if (otherBuffer == InvalidBuffer)
   ReleaseBuffer(buffer);
  else if (otherBlock != targetBlock)
  {
   LockBuffer(otherBuffer, BUFFER_LOCK_UNLOCK);
   ReleaseBuffer(buffer);
  }


  if (!use_fsm)
   break;





  targetBlock = RecordAndGetPageWithFreeSpace(relation,
             targetBlock,
             pageFreeSpace,
             len + saveFreeSpace);
 }
 needLock = !RELATION_IS_LOCAL(relation);







 if (needLock)
 {
  if (!use_fsm)
   LockRelationForExtension(relation, ExclusiveLock);
  else if (!ConditionalLockRelationForExtension(relation, ExclusiveLock))
  {

   LockRelationForExtension(relation, ExclusiveLock);





   targetBlock = GetPageWithFreeSpace(relation, len + saveFreeSpace);





   if (targetBlock != InvalidBlockNumber)
   {
    UnlockRelationForExtension(relation, ExclusiveLock);
    goto loop;
   }


   RelationAddExtraBlocks(relation, bistate);
  }
 }
 buffer = ReadBufferBI(relation, P_NEW, RBM_ZERO_AND_LOCK, bistate);






 page = BufferGetPage(buffer);

 if (!PageIsNew(page))
  elog(ERROR, "page %u of relation \"%s\" should be empty but is not",
    BufferGetBlockNumber(buffer),
    RelationGetRelationName(relation));

 PageInit(page, BufferGetPageSize(buffer), 0);
 MarkBufferDirty(buffer);





 if (needLock)
  UnlockRelationForExtension(relation, ExclusiveLock);
 if (otherBuffer != InvalidBuffer)
 {
  Assert(otherBuffer != buffer);

  if (unlikely(!ConditionalLockBuffer(otherBuffer)))
  {
   LockBuffer(buffer, BUFFER_LOCK_UNLOCK);
   LockBuffer(otherBuffer, BUFFER_LOCK_EXCLUSIVE);
   LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);






   if (len > PageGetHeapFreeSpace(page))
   {
    LockBuffer(otherBuffer, BUFFER_LOCK_UNLOCK);
    UnlockReleaseBuffer(buffer);

    goto loop;
   }
  }
 }

 if (len > PageGetHeapFreeSpace(page))
 {

  elog(PANIC, "tuple is too big: size %zu", len);
 }
 RelationSetTargetBlock(relation, BufferGetBlockNumber(buffer));

 return buffer;
}
