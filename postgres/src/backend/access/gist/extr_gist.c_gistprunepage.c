
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int TransactionId ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef int Buffer ;


 int Assert (int ) ;
 int END_CRIT_SECTION () ;
 scalar_t__ FirstOffsetNumber ;
 int GistClearPageHasGarbage (int ) ;
 int GistPageIsLeaf (int ) ;
 int InvalidTransactionId ;
 scalar_t__ ItemIdIsDead (int ) ;
 int MarkBufferDirty (int ) ;
 int MaxIndexTuplesPerPage ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PageIndexMultiDelete (int ,scalar_t__*,int) ;
 int PageSetLSN (int ,int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 scalar_t__ XLogStandbyInfoActive () ;
 int gistGetFakeLSN (int ) ;
 int gistXLogDelete (int ,scalar_t__*,int,int ) ;
 int index_compute_xid_horizon_for_tuples (int ,int ,int ,scalar_t__*,int) ;

__attribute__((used)) static void
gistprunepage(Relation rel, Page page, Buffer buffer, Relation heapRel)
{
 OffsetNumber deletable[MaxIndexTuplesPerPage];
 int ndeletable = 0;
 OffsetNumber offnum,
    maxoff;
 TransactionId latestRemovedXid = InvalidTransactionId;

 Assert(GistPageIsLeaf(page));





 maxoff = PageGetMaxOffsetNumber(page);
 for (offnum = FirstOffsetNumber;
   offnum <= maxoff;
   offnum = OffsetNumberNext(offnum))
 {
  ItemId itemId = PageGetItemId(page, offnum);

  if (ItemIdIsDead(itemId))
   deletable[ndeletable++] = offnum;
 }

 if (XLogStandbyInfoActive() && RelationNeedsWAL(rel))
  latestRemovedXid =
   index_compute_xid_horizon_for_tuples(rel, heapRel, buffer,
             deletable, ndeletable);

 if (ndeletable > 0)
 {
  START_CRIT_SECTION();

  PageIndexMultiDelete(page, deletable, ndeletable);
  GistClearPageHasGarbage(page);

  MarkBufferDirty(buffer);


  if (RelationNeedsWAL(rel))
  {
   XLogRecPtr recptr;

   recptr = gistXLogDelete(buffer,
         deletable, ndeletable,
         latestRemovedXid);

   PageSetLSN(page, recptr);
  }
  else
   PageSetLSN(page, gistGetFakeLSN(rel));

  END_CRIT_SECTION();
 }







}
