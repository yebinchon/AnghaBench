
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ leftsib; scalar_t__ rightsib; int topparent; scalar_t__ leafrightsib; scalar_t__ leafleftsib; int btpo_xact; } ;
typedef TYPE_2__ xl_btree_unlink_page ;
typedef scalar_t__ uint8 ;
typedef int XLogRecPtr ;
struct TYPE_16__ {int EndRecPtr; } ;
typedef TYPE_3__ XLogReaderState ;
struct TYPE_14__ {scalar_t__ level; int xact; } ;
struct TYPE_18__ {int btpo_flags; scalar_t__ btpo_cycleid; TYPE_1__ btpo; scalar_t__ btpo_next; scalar_t__ btpo_prev; } ;
struct TYPE_17__ {int t_info; } ;
typedef scalar_t__ Page ;
typedef int Item ;
typedef TYPE_4__ IndexTupleData ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_5__* BTPageOpaque ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BTP_DELETED ;
 int BTP_HALF_DEAD ;
 int BTP_LEAF ;
 int BTreeTupleSetTopParent (TYPE_4__*,int ) ;
 scalar_t__ BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int ERROR ;
 scalar_t__ InvalidOffsetNumber ;
 int MarkBufferDirty (int ) ;
 int MemSet (TYPE_4__*,int ,int) ;
 int P_HIKEY ;
 scalar_t__ P_NONE ;
 scalar_t__ PageAddItem (scalar_t__,int ,int,int ,int,int) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLOG_BTREE_UNLINK_PAGE_META ;
 int XLogInitBufferForRedo (TYPE_3__*,int) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_3__*,int,int *) ;
 scalar_t__ XLogRecGetData (TYPE_3__*) ;
 scalar_t__ XLogRecHasBlockRef (TYPE_3__*,int) ;
 int _bt_pageinit (scalar_t__,int ) ;
 int _bt_restore_meta (TYPE_3__*,int) ;
 int elog (int ,char*) ;

__attribute__((used)) static void
btree_xlog_unlink_page(uint8 info, XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_btree_unlink_page *xlrec = (xl_btree_unlink_page *) XLogRecGetData(record);
 BlockNumber leftsib;
 BlockNumber rightsib;
 Buffer buffer;
 Page page;
 BTPageOpaque pageop;

 leftsib = xlrec->leftsib;
 rightsib = xlrec->rightsib;
 if (XLogReadBufferForRedo(record, 2, &buffer) == BLK_NEEDS_REDO)
 {
  page = (Page) BufferGetPage(buffer);
  pageop = (BTPageOpaque) PageGetSpecialPointer(page);
  pageop->btpo_prev = leftsib;

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);


 if (leftsib != P_NONE)
 {
  if (XLogReadBufferForRedo(record, 1, &buffer) == BLK_NEEDS_REDO)
  {
   page = (Page) BufferGetPage(buffer);
   pageop = (BTPageOpaque) PageGetSpecialPointer(page);
   pageop->btpo_next = rightsib;

   PageSetLSN(page, lsn);
   MarkBufferDirty(buffer);
  }
  if (BufferIsValid(buffer))
   UnlockReleaseBuffer(buffer);
 }


 buffer = XLogInitBufferForRedo(record, 0);
 page = (Page) BufferGetPage(buffer);

 _bt_pageinit(page, BufferGetPageSize(buffer));
 pageop = (BTPageOpaque) PageGetSpecialPointer(page);

 pageop->btpo_prev = leftsib;
 pageop->btpo_next = rightsib;
 pageop->btpo.xact = xlrec->btpo_xact;
 pageop->btpo_flags = BTP_DELETED;
 pageop->btpo_cycleid = 0;

 PageSetLSN(page, lsn);
 MarkBufferDirty(buffer);
 UnlockReleaseBuffer(buffer);






 if (XLogRecHasBlockRef(record, 3))
 {




  IndexTupleData trunctuple;

  buffer = XLogInitBufferForRedo(record, 3);
  page = (Page) BufferGetPage(buffer);

  _bt_pageinit(page, BufferGetPageSize(buffer));
  pageop = (BTPageOpaque) PageGetSpecialPointer(page);

  pageop->btpo_flags = BTP_HALF_DEAD | BTP_LEAF;
  pageop->btpo_prev = xlrec->leafleftsib;
  pageop->btpo_next = xlrec->leafrightsib;
  pageop->btpo.level = 0;
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


 if (info == XLOG_BTREE_UNLINK_PAGE_META)
  _bt_restore_meta(record, 4);
}
