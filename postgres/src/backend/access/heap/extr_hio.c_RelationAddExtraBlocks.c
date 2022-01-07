
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;
typedef int Relation ;
typedef int Page ;
typedef int BulkInsertState ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferGetPageSize (int ) ;
 int ERROR ;
 int FreeSpaceMapVacuumRange (int ,scalar_t__,scalar_t__) ;
 scalar_t__ InvalidBlockNumber ;
 int Min (int,int) ;
 int P_NEW ;
 int PageIsNew (int ) ;
 int RBM_ZERO_AND_LOCK ;
 int ReadBufferBI (int ,int ,int ,int ) ;
 int RecordPageWithFreeSpace (int ,scalar_t__,scalar_t__) ;
 int RelationExtensionLockWaiterCount (int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ SizeOfPageHeaderData ;
 int UnlockReleaseBuffer (int ) ;
 int elog (int ,char*,scalar_t__,int ) ;

__attribute__((used)) static void
RelationAddExtraBlocks(Relation relation, BulkInsertState bistate)
{
 BlockNumber blockNum,
    firstBlock = InvalidBlockNumber;
 int extraBlocks;
 int lockWaiters;


 lockWaiters = RelationExtensionLockWaiterCount(relation);
 if (lockWaiters <= 0)
  return;







 extraBlocks = Min(512, lockWaiters * 20);

 do
 {
  Buffer buffer;
  Page page;
  Size freespace;







  buffer = ReadBufferBI(relation, P_NEW, RBM_ZERO_AND_LOCK, bistate);
  page = BufferGetPage(buffer);

  if (!PageIsNew(page))
   elog(ERROR, "page %u of relation \"%s\" should be empty but is not",
     BufferGetBlockNumber(buffer),
     RelationGetRelationName(relation));
  blockNum = BufferGetBlockNumber(buffer);
  freespace = BufferGetPageSize(buffer) - SizeOfPageHeaderData;

  UnlockReleaseBuffer(buffer);


  if (firstBlock == InvalidBlockNumber)
   firstBlock = blockNum;






  RecordPageWithFreeSpace(relation, blockNum, freespace);
 }
 while (--extraBlocks > 0);







 FreeSpaceMapVacuumRange(relation, firstBlock, blockNum + 1);
}
