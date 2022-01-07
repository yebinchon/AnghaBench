
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int topparent; int rightblk; int leftblk; int poffset; } ;
typedef TYPE_2__ xl_btree_mark_page_halfdead ;
typedef int uint8 ;
typedef int XLogRecPtr ;
struct TYPE_14__ {int EndRecPtr; } ;
typedef TYPE_3__ XLogReaderState ;
struct TYPE_12__ {scalar_t__ level; } ;
struct TYPE_16__ {int btpo_flags; scalar_t__ btpo_cycleid; TYPE_1__ btpo; int btpo_next; int btpo_prev; } ;
struct TYPE_15__ {int t_info; } ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef int ItemId ;
typedef int Item ;
typedef TYPE_4__ IndexTupleData ;
typedef scalar_t__ IndexTuple ;
typedef int Buffer ;
typedef int BlockNumber ;
typedef TYPE_5__* BTPageOpaque ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BTP_HALF_DEAD ;
 int BTP_LEAF ;
 int BTreeInnerTupleGetDownLink (scalar_t__) ;
 int BTreeInnerTupleSetDownLink (scalar_t__,int ) ;
 int BTreeTupleSetTopParent (TYPE_4__*,int ) ;
 scalar_t__ BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int ERROR ;
 scalar_t__ InvalidOffsetNumber ;
 int MarkBufferDirty (int ) ;
 int MemSet (TYPE_4__*,int ,int) ;
 int OffsetNumberNext (int ) ;
 int P_HIKEY ;
 scalar_t__ PageAddItem (scalar_t__,int ,int,int ,int,int) ;
 scalar_t__ PageGetItem (scalar_t__,int ) ;
 int PageGetItemId (scalar_t__,int ) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int PageIndexTupleDelete (scalar_t__,int ) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_3__*,int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_3__*,int,int *) ;
 scalar_t__ XLogRecGetData (TYPE_3__*) ;
 int _bt_pageinit (scalar_t__,int ) ;
 int elog (int ,char*) ;

__attribute__((used)) static void
btree_xlog_mark_page_halfdead(uint8 info, XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_btree_mark_page_halfdead *xlrec = (xl_btree_mark_page_halfdead *) XLogRecGetData(record);
 Buffer buffer;
 Page page;
 BTPageOpaque pageop;
 IndexTupleData trunctuple;
 if (XLogReadBufferForRedo(record, 1, &buffer) == BLK_NEEDS_REDO)
 {
  OffsetNumber poffset;
  ItemId itemid;
  IndexTuple itup;
  OffsetNumber nextoffset;
  BlockNumber rightsib;

  page = (Page) BufferGetPage(buffer);
  pageop = (BTPageOpaque) PageGetSpecialPointer(page);

  poffset = xlrec->poffset;

  nextoffset = OffsetNumberNext(poffset);
  itemid = PageGetItemId(page, nextoffset);
  itup = (IndexTuple) PageGetItem(page, itemid);
  rightsib = BTreeInnerTupleGetDownLink(itup);

  itemid = PageGetItemId(page, poffset);
  itup = (IndexTuple) PageGetItem(page, itemid);
  BTreeInnerTupleSetDownLink(itup, rightsib);
  nextoffset = OffsetNumberNext(poffset);
  PageIndexTupleDelete(page, nextoffset);

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);


 buffer = XLogInitBufferForRedo(record, 0);
 page = (Page) BufferGetPage(buffer);

 _bt_pageinit(page, BufferGetPageSize(buffer));
 pageop = (BTPageOpaque) PageGetSpecialPointer(page);

 pageop->btpo_prev = xlrec->leftblk;
 pageop->btpo_next = xlrec->rightblk;
 pageop->btpo.level = 0;
 pageop->btpo_flags = BTP_HALF_DEAD | BTP_LEAF;
 pageop->btpo_cycleid = 0;





 MemSet(&trunctuple, 0, sizeof(IndexTupleData));
 trunctuple.t_info = sizeof(IndexTupleData);
 BTreeTupleSetTopParent(&trunctuple, xlrec->topparent);

 if (PageAddItem(page, (Item) &trunctuple, sizeof(IndexTupleData), P_HIKEY,
     0, 0) == InvalidOffsetNumber)
  elog(ERROR, "could not add dummy high key to half-dead page");

 PageSetLSN(page, lsn);
 MarkBufferDirty(buffer);
 UnlockReleaseBuffer(buffer);
}
