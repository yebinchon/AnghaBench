
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int nredirected; int ndead; int latestRemovedXid; } ;
typedef TYPE_1__ xl_heap_clean ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_9__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef int Size ;
typedef int RelFileNode ;
typedef int Page ;
typedef int OffsetNumber ;
typedef int Buffer ;
typedef int BlockNumber ;


 int Assert (int) ;
 scalar_t__ BLK_NEEDS_REDO ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 scalar_t__ InHotStandby ;
 int MarkBufferDirty (int ) ;
 int PageGetHeapFreeSpace (int ) ;
 int PageSetLSN (int ,int ) ;
 int RBM_NORMAL ;
 int ResolveRecoveryConflictWithSnapshot (int ,int ) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedoExtended (TYPE_2__*,int ,int ,int,int *) ;
 scalar_t__ XLogRecGetBlockData (TYPE_2__*,int ,int*) ;
 int XLogRecGetBlockTag (TYPE_2__*,int ,int *,int *,int *) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int XLogRecordPageWithFreeSpace (int ,int ,int) ;
 int heap_page_prune_execute (int ,int *,int,int *,int,int *,int) ;

__attribute__((used)) static void
heap_xlog_clean(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 xl_heap_clean *xlrec = (xl_heap_clean *) XLogRecGetData(record);
 Buffer buffer;
 RelFileNode rnode;
 BlockNumber blkno;
 XLogRedoAction action;

 XLogRecGetBlockTag(record, 0, &rnode, ((void*)0), &blkno);
 if (InHotStandby && TransactionIdIsValid(xlrec->latestRemovedXid))
  ResolveRecoveryConflictWithSnapshot(xlrec->latestRemovedXid, rnode);





 action = XLogReadBufferForRedoExtended(record, 0, RBM_NORMAL, 1,
             &buffer);
 if (action == BLK_NEEDS_REDO)
 {
  Page page = (Page) BufferGetPage(buffer);
  OffsetNumber *end;
  OffsetNumber *redirected;
  OffsetNumber *nowdead;
  OffsetNumber *nowunused;
  int nredirected;
  int ndead;
  int nunused;
  Size datalen;

  redirected = (OffsetNumber *) XLogRecGetBlockData(record, 0, &datalen);

  nredirected = xlrec->nredirected;
  ndead = xlrec->ndead;
  end = (OffsetNumber *) ((char *) redirected + datalen);
  nowdead = redirected + (nredirected * 2);
  nowunused = nowdead + ndead;
  nunused = (end - nowunused);
  Assert(nunused >= 0);


  heap_page_prune_execute(buffer,
        redirected, nredirected,
        nowdead, ndead,
        nowunused, nunused);






  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }

 if (BufferIsValid(buffer))
 {
  Size freespace = PageGetHeapFreeSpace(BufferGetPage(buffer));

  UnlockReleaseBuffer(buffer);
  XLogRecordPageWithFreeSpace(rnode, blkno, freespace);
 }
}
