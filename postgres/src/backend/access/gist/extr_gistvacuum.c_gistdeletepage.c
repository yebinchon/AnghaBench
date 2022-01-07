
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_7__ {int pages_deleted; } ;
struct TYPE_10__ {TYPE_1__ stats; } ;
struct TYPE_9__ {int t_tid; } ;
struct TYPE_8__ {int index; } ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef TYPE_2__ IndexVacuumInfo ;
typedef TYPE_3__* IndexTuple ;
typedef TYPE_4__ GistBulkDeleteResult ;
typedef int FullTransactionId ;
typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 scalar_t__ FirstOffsetNumber ;
 scalar_t__ GistFollowRight (int ) ;
 scalar_t__ GistPageIsDeleted (int ) ;
 scalar_t__ GistPageIsLeaf (int ) ;
 int GistPageSetDeleted (int ,int ) ;
 scalar_t__ InvalidOffsetNumber ;
 scalar_t__ ItemPointerGetBlockNumber (int *) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PageIndexTupleDelete (int ,scalar_t__) ;
 scalar_t__ PageIsNew (int ) ;
 int PageSetLSN (int ,int ) ;
 int ReadNextFullTransactionId () ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int gistGetFakeLSN (int ) ;
 int gistXLogPageDelete (int ,int ,int ,scalar_t__) ;

__attribute__((used)) static bool
gistdeletepage(IndexVacuumInfo *info, GistBulkDeleteResult *stats,
      Buffer parentBuffer, OffsetNumber downlink,
      Buffer leafBuffer)
{
 Page parentPage = BufferGetPage(parentBuffer);
 Page leafPage = BufferGetPage(leafBuffer);
 ItemId iid;
 IndexTuple idxtuple;
 XLogRecPtr recptr;
 FullTransactionId txid;




 if (!GistPageIsLeaf(leafPage))
 {

  Assert(0);
  return 0;
 }

 if (GistFollowRight(leafPage))
  return 0;

 if (PageGetMaxOffsetNumber(leafPage) != InvalidOffsetNumber)
  return 0;
 if (PageIsNew(parentPage) || GistPageIsDeleted(parentPage) ||
  GistPageIsLeaf(parentPage))
 {

  Assert(0);
  return 0;
 }

 if (PageGetMaxOffsetNumber(parentPage) < downlink
  || PageGetMaxOffsetNumber(parentPage) <= FirstOffsetNumber)
  return 0;

 iid = PageGetItemId(parentPage, downlink);
 idxtuple = (IndexTuple) PageGetItem(parentPage, iid);
 if (BufferGetBlockNumber(leafBuffer) !=
  ItemPointerGetBlockNumber(&(idxtuple->t_tid)))
  return 0;
 txid = ReadNextFullTransactionId();

 START_CRIT_SECTION();


 MarkBufferDirty(leafBuffer);
 GistPageSetDeleted(leafPage, txid);
 stats->stats.pages_deleted++;


 MarkBufferDirty(parentBuffer);
 PageIndexTupleDelete(parentPage, downlink);

 if (RelationNeedsWAL(info->index))
  recptr = gistXLogPageDelete(leafBuffer, txid, parentBuffer, downlink);
 else
  recptr = gistGetFakeLSN(info->index);
 PageSetLSN(parentPage, recptr);
 PageSetLSN(leafPage, recptr);

 END_CRIT_SECTION();

 return 1;
}
