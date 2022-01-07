
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int offnum; } ;
typedef TYPE_1__ xl_hash_insert ;
typedef int XLogRecPtr ;
struct TYPE_10__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_11__ {int hashm_ntuples; } ;
typedef int Size ;
typedef int Page ;
typedef int Item ;
typedef TYPE_3__* HashMetaPage ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 TYPE_3__* HashPageGetMeta (int ) ;
 scalar_t__ InvalidOffsetNumber ;
 int MarkBufferDirty (int ) ;
 int PANIC ;
 scalar_t__ PageAddItem (int ,int ,int ,int ,int,int) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 char* XLogRecGetBlockData (TYPE_2__*,int ,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int elog (int ,char*) ;

__attribute__((used)) static void
hash_xlog_insert(XLogReaderState *record)
{
 HashMetaPage metap;
 XLogRecPtr lsn = record->EndRecPtr;
 xl_hash_insert *xlrec = (xl_hash_insert *) XLogRecGetData(record);
 Buffer buffer;
 Page page;

 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  Size datalen;
  char *datapos = XLogRecGetBlockData(record, 0, &datalen);

  page = BufferGetPage(buffer);

  if (PageAddItem(page, (Item) datapos, datalen, xlrec->offnum,
      0, 0) == InvalidOffsetNumber)
   elog(PANIC, "hash_xlog_insert: failed to add item");

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);

 if (XLogReadBufferForRedo(record, 1, &buffer) == BLK_NEEDS_REDO)
 {






  page = BufferGetPage(buffer);
  metap = HashPageGetMeta(page);
  metap->hashm_ntuples += 1;

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
