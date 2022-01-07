
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8 ;
typedef scalar_t__ XLogRedoAction ;
typedef int XLogRecPtr ;
struct TYPE_7__ {int max_block_id; int EndRecPtr; } ;
typedef TYPE_1__ XLogReaderState ;
struct TYPE_8__ {scalar_t__ pd_lower; scalar_t__ pd_upper; } ;
typedef int Size ;
typedef TYPE_2__* PageHeader ;
typedef scalar_t__ Page ;
typedef int Buffer ;


 int Assert (int) ;
 scalar_t__ BLK_NEEDS_REDO ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int InvalidBuffer ;
 int MAX_GENERIC_XLOG_PAGES ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (scalar_t__,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_1__*,size_t,int *) ;
 char* XLogRecGetBlockData (TYPE_1__*,size_t,int *) ;
 int XLogRecHasBlockRef (TYPE_1__*,size_t) ;
 int applyPageRedo (scalar_t__,char*,int ) ;
 int memset (scalar_t__,int ,scalar_t__) ;

void
generic_redo(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 Buffer buffers[MAX_GENERIC_XLOG_PAGES];
 uint8 block_id;


 Assert(record->max_block_id < MAX_GENERIC_XLOG_PAGES);


 for (block_id = 0; block_id <= record->max_block_id; block_id++)
 {
  XLogRedoAction action;

  if (!XLogRecHasBlockRef(record, block_id))
  {
   buffers[block_id] = InvalidBuffer;
   continue;
  }

  action = XLogReadBufferForRedo(record, block_id, &buffers[block_id]);


  if (action == BLK_NEEDS_REDO)
  {
   Page page;
   PageHeader pageHeader;
   char *blockDelta;
   Size blockDeltaSize;

   page = BufferGetPage(buffers[block_id]);
   blockDelta = XLogRecGetBlockData(record, block_id, &blockDeltaSize);
   applyPageRedo(page, blockDelta, blockDeltaSize);







   pageHeader = (PageHeader) page;
   memset(page + pageHeader->pd_lower, 0,
       pageHeader->pd_upper - pageHeader->pd_lower);

   PageSetLSN(page, lsn);
   MarkBufferDirty(buffers[block_id]);
  }
 }


 for (block_id = 0; block_id <= record->max_block_id; block_id++)
 {
  if (BufferIsValid(buffers[block_id]))
   UnlockReleaseBuffer(buffers[block_id]);
 }
}
