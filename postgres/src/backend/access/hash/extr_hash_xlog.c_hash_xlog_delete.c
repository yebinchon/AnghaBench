
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ clear_dead_marking; scalar_t__ is_primary_bucket_page; } ;
typedef TYPE_1__ xl_hash_delete ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_10__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_11__ {int hasho_flag; } ;
typedef scalar_t__ Size ;
typedef scalar_t__ Page ;
typedef int OffsetNumber ;
typedef TYPE_3__* HashPageOpaque ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int InvalidBuffer ;
 int LH_PAGE_HAS_DEAD_TUPLES ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int PageIndexMultiDelete (scalar_t__,int *,int) ;
 int PageSetLSN (scalar_t__,int ) ;
 int RBM_NORMAL ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 scalar_t__ XLogReadBufferForRedoExtended (TYPE_2__*,int,int ,int,int *) ;
 char* XLogRecGetBlockData (TYPE_2__*,int,scalar_t__*) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;

__attribute__((used)) static void
hash_xlog_delete(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_hash_delete *xldata = (xl_hash_delete *) XLogRecGetData(record);
 Buffer bucketbuf = InvalidBuffer;
 Buffer deletebuf;
 Page page;
 XLogRedoAction action;
 if (xldata->is_primary_bucket_page)
  action = XLogReadBufferForRedoExtended(record, 1, RBM_NORMAL, 1, &deletebuf);
 else
 {




  (void) XLogReadBufferForRedoExtended(record, 0, RBM_NORMAL, 1, &bucketbuf);

  action = XLogReadBufferForRedo(record, 1, &deletebuf);
 }


 if (action == BLK_NEEDS_REDO)
 {
  char *ptr;
  Size len;

  ptr = XLogRecGetBlockData(record, 1, &len);

  page = (Page) BufferGetPage(deletebuf);

  if (len > 0)
  {
   OffsetNumber *unused;
   OffsetNumber *unend;

   unused = (OffsetNumber *) ptr;
   unend = (OffsetNumber *) ((char *) ptr + len);

   if ((unend - unused) > 0)
    PageIndexMultiDelete(page, unused, unend - unused);
  }






  if (xldata->clear_dead_marking)
  {
   HashPageOpaque pageopaque;

   pageopaque = (HashPageOpaque) PageGetSpecialPointer(page);
   pageopaque->hasho_flag &= ~LH_PAGE_HAS_DEAD_TUPLES;
  }

  PageSetLSN(page, lsn);
  MarkBufferDirty(deletebuf);
 }
 if (BufferIsValid(deletebuf))
  UnlockReleaseBuffer(deletebuf);

 if (BufferIsValid(bucketbuf))
  UnlockReleaseBuffer(bucketbuf);
}
