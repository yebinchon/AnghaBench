
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int offnum; } ;
typedef TYPE_1__ xl_btree_insert ;
typedef int XLogRecPtr ;
struct TYPE_10__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef int Size ;
typedef int Page ;
typedef int Item ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 scalar_t__ InvalidOffsetNumber ;
 int MarkBufferDirty (int ) ;
 int PANIC ;
 scalar_t__ PageAddItem (int ,int ,int ,int ,int,int) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 char* XLogRecGetBlockData (TYPE_2__*,int ,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int _bt_clear_incomplete_split (TYPE_2__*,int) ;
 int _bt_restore_meta (TYPE_2__*,int) ;
 int elog (int ,char*) ;

__attribute__((used)) static void
btree_xlog_insert(bool isleaf, bool ismeta, XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_btree_insert *xlrec = (xl_btree_insert *) XLogRecGetData(record);
 Buffer buffer;
 Page page;
 if (!isleaf)
  _bt_clear_incomplete_split(record, 1);
 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  Size datalen;
  char *datapos = XLogRecGetBlockData(record, 0, &datalen);

  page = BufferGetPage(buffer);

  if (PageAddItem(page, (Item) datapos, datalen, xlrec->offnum,
      0, 0) == InvalidOffsetNumber)
   elog(PANIC, "btree_xlog_insert: failed to add item");

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
 if (ismeta)
  _bt_restore_meta(record, 2);
}
