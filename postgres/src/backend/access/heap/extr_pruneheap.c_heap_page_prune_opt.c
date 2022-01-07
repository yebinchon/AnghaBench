
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TransactionId ;
typedef scalar_t__ Size ;
typedef int Relation ;
typedef int Page ;
typedef int Buffer ;


 int Assert (int ) ;
 int BLCKSZ ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 int ConditionalLockBufferForCleanup (int ) ;
 int HEAP_DEFAULT_FILLFACTOR ;
 int InvalidTransactionId ;
 scalar_t__ IsCatalogRelation (int ) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ Max (scalar_t__,int) ;
 scalar_t__ PageGetHeapFreeSpace (int ) ;
 scalar_t__ PageIsFull (int ) ;
 int PageIsPrunable (int ,int ) ;
 int RecentGlobalDataXmin ;
 int RecentGlobalXmin ;
 scalar_t__ RecoveryInProgress () ;
 scalar_t__ RelationGetTargetPageFreeSpace (int ,int ) ;
 scalar_t__ RelationIsAccessibleInLogicalDecoding (int ) ;
 int TransactionIdIsValid (int ) ;
 int TransactionIdLimitedForOldSnapshots (int ,int ) ;
 int heap_page_prune (int ,int ,int ,int,int *) ;

void
heap_page_prune_opt(Relation relation, Buffer buffer)
{
 Page page = BufferGetPage(buffer);
 Size minfree;
 TransactionId OldestXmin;






 if (RecoveryInProgress())
  return;
 if (IsCatalogRelation(relation) ||
  RelationIsAccessibleInLogicalDecoding(relation))
  OldestXmin = RecentGlobalXmin;
 else
  OldestXmin =
   TransactionIdLimitedForOldSnapshots(RecentGlobalDataXmin,
            relation);

 Assert(TransactionIdIsValid(OldestXmin));







 if (!PageIsPrunable(page, OldestXmin))
  return;
 minfree = RelationGetTargetPageFreeSpace(relation,
            HEAP_DEFAULT_FILLFACTOR);
 minfree = Max(minfree, BLCKSZ / 10);

 if (PageIsFull(page) || PageGetHeapFreeSpace(page) < minfree)
 {

  if (!ConditionalLockBufferForCleanup(buffer))
   return;







  if (PageIsFull(page) || PageGetHeapFreeSpace(page) < minfree)
  {
   TransactionId ignore = InvalidTransactionId;



   (void) heap_page_prune(relation, buffer, OldestXmin, 1, &ignore);
  }


  LockBuffer(buffer, BUFFER_LOCK_UNLOCK);
 }
}
