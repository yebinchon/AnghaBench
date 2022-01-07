
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int new_bucket_flag; int old_bucket_flag; } ;
typedef TYPE_1__ xl_hash_split_complete ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_8__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_9__ {int hasho_flag; } ;
typedef int Page ;
typedef TYPE_3__* HashPageOpaque ;
typedef int Buffer ;


 scalar_t__ BLK_NEEDS_REDO ;
 scalar_t__ BLK_RESTORED ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;

__attribute__((used)) static void
hash_xlog_split_complete(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_hash_split_complete *xlrec = (xl_hash_split_complete *) XLogRecGetData(record);
 Buffer oldbuf;
 Buffer newbuf;
 XLogRedoAction action;


 action = XLogReadBufferForRedo(record, 0, &oldbuf);





 if (action == BLK_NEEDS_REDO || action == BLK_RESTORED)
 {
  Page oldpage;
  HashPageOpaque oldopaque;

  oldpage = BufferGetPage(oldbuf);
  oldopaque = (HashPageOpaque) PageGetSpecialPointer(oldpage);

  oldopaque->hasho_flag = xlrec->old_bucket_flag;

  PageSetLSN(oldpage, lsn);
  MarkBufferDirty(oldbuf);
 }
 if (BufferIsValid(oldbuf))
  UnlockReleaseBuffer(oldbuf);


 action = XLogReadBufferForRedo(record, 1, &newbuf);





 if (action == BLK_NEEDS_REDO || action == BLK_RESTORED)
 {
  Page newpage;
  HashPageOpaque nopaque;

  newpage = BufferGetPage(newbuf);
  nopaque = (HashPageOpaque) PageGetSpecialPointer(newpage);

  nopaque->hasho_flag = xlrec->new_bucket_flag;

  PageSetLSN(newpage, lsn);
  MarkBufferDirty(newbuf);
 }
 if (BufferIsValid(newbuf))
  UnlockReleaseBuffer(newbuf);
}
