
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ level; } ;
typedef TYPE_2__ xl_btree_newroot ;
typedef int XLogRecPtr ;
struct TYPE_13__ {int EndRecPtr; } ;
typedef TYPE_3__ XLogReaderState ;
struct TYPE_11__ {scalar_t__ level; } ;
struct TYPE_14__ {scalar_t__ btpo_cycleid; int btpo_flags; TYPE_1__ btpo; int btpo_next; int btpo_prev; } ;
typedef int Size ;
typedef scalar_t__ Page ;
typedef int Buffer ;
typedef TYPE_4__* BTPageOpaque ;


 int BTP_LEAF ;
 int BTP_ROOT ;
 scalar_t__ BufferGetPage (int ) ;
 int BufferGetPageSize (int ) ;
 int MarkBufferDirty (int ) ;
 int P_NONE ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_3__*,int ) ;
 char* XLogRecGetBlockData (TYPE_3__*,int ,int *) ;
 scalar_t__ XLogRecGetData (TYPE_3__*) ;
 int _bt_clear_incomplete_split (TYPE_3__*,int) ;
 int _bt_pageinit (scalar_t__,int ) ;
 int _bt_restore_meta (TYPE_3__*,int) ;
 int _bt_restore_page (scalar_t__,char*,int ) ;

__attribute__((used)) static void
btree_xlog_newroot(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_btree_newroot *xlrec = (xl_btree_newroot *) XLogRecGetData(record);
 Buffer buffer;
 Page page;
 BTPageOpaque pageop;
 char *ptr;
 Size len;

 buffer = XLogInitBufferForRedo(record, 0);
 page = (Page) BufferGetPage(buffer);

 _bt_pageinit(page, BufferGetPageSize(buffer));
 pageop = (BTPageOpaque) PageGetSpecialPointer(page);

 pageop->btpo_flags = BTP_ROOT;
 pageop->btpo_prev = pageop->btpo_next = P_NONE;
 pageop->btpo.level = xlrec->level;
 if (xlrec->level == 0)
  pageop->btpo_flags |= BTP_LEAF;
 pageop->btpo_cycleid = 0;

 if (xlrec->level > 0)
 {
  ptr = XLogRecGetBlockData(record, 0, &len);
  _bt_restore_page(page, ptr, len);


  _bt_clear_incomplete_split(record, 1);
 }

 PageSetLSN(page, lsn);
 MarkBufferDirty(buffer);
 UnlockReleaseBuffer(buffer);

 _bt_restore_meta(record, 2);
}
