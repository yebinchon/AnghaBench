
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ offnum; } ;
typedef TYPE_1__ xl_heap_inplace ;
typedef int uint32 ;
typedef int XLogRecPtr ;
struct TYPE_9__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_10__ {int t_hoff; } ;
typedef int Size ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int * ItemId ;
typedef TYPE_3__* HeapTupleHeader ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int ItemIdGetLength (int *) ;
 int ItemIdIsNormal (int *) ;
 int MarkBufferDirty (int ) ;
 int PANIC ;
 scalar_t__ PageGetItem (int ,int *) ;
 int * PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 char* XLogRecGetBlockData (TYPE_2__*,int ,int*) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int elog (int ,char*) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void
heap_xlog_inplace(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_heap_inplace *xlrec = (xl_heap_inplace *) XLogRecGetData(record);
 Buffer buffer;
 Page page;
 OffsetNumber offnum;
 ItemId lp = ((void*)0);
 HeapTupleHeader htup;
 uint32 oldlen;
 Size newlen;

 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  char *newtup = XLogRecGetBlockData(record, 0, &newlen);

  page = BufferGetPage(buffer);

  offnum = xlrec->offnum;
  if (PageGetMaxOffsetNumber(page) >= offnum)
   lp = PageGetItemId(page, offnum);

  if (PageGetMaxOffsetNumber(page) < offnum || !ItemIdIsNormal(lp))
   elog(PANIC, "invalid lp");

  htup = (HeapTupleHeader) PageGetItem(page, lp);

  oldlen = ItemIdGetLength(lp) - htup->t_hoff;
  if (oldlen != newlen)
   elog(PANIC, "wrong tuple length");

  memcpy((char *) htup + htup->t_hoff, newtup, newlen);

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
