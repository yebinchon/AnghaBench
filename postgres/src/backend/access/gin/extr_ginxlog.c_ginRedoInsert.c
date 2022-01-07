
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
typedef TYPE_1__ ginxlogInsert ;
typedef int XLogRecPtr ;
struct TYPE_9__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
typedef int Size ;
typedef int Page ;
typedef int Buffer ;
typedef int BlockNumber ;
typedef int BlockIdData ;
typedef int BlockId ;


 int Assert (int) ;
 scalar_t__ BLK_NEEDS_REDO ;
 int BlockIdGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int GIN_INSERT_ISDATA ;
 int GIN_INSERT_ISLEAF ;
 int GinPageIsData (int ) ;
 int InvalidBlockNumber ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 scalar_t__ XLogReadBufferForRedo (TYPE_2__*,int ,int *) ;
 char* XLogRecGetBlockData (TYPE_2__*,int ,int *) ;
 char* XLogRecGetData (TYPE_2__*) ;
 int ginRedoClearIncompleteSplit (TYPE_2__*,int) ;
 int ginRedoInsertData (int ,int,int ,char*) ;
 int ginRedoInsertEntry (int ,int,int ,char*) ;

__attribute__((used)) static void
ginRedoInsert(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 ginxlogInsert *data = (ginxlogInsert *) XLogRecGetData(record);
 Buffer buffer;



 BlockNumber rightChildBlkno = InvalidBlockNumber;
 bool isLeaf = (data->flags & GIN_INSERT_ISLEAF) != 0;





 if (!isLeaf)
 {
  char *payload = XLogRecGetData(record) + sizeof(ginxlogInsert);




  payload += sizeof(BlockIdData);
  rightChildBlkno = BlockIdGetBlockNumber((BlockId) payload);
  payload += sizeof(BlockIdData);

  ginRedoClearIncompleteSplit(record, 1);
 }

 if (XLogReadBufferForRedo(record, 0, &buffer) == BLK_NEEDS_REDO)
 {
  Page page = BufferGetPage(buffer);
  Size len;
  char *payload = XLogRecGetBlockData(record, 0, &len);


  if (data->flags & GIN_INSERT_ISDATA)
  {
   Assert(GinPageIsData(page));
   ginRedoInsertData(buffer, isLeaf, rightChildBlkno, payload);
  }
  else
  {
   Assert(!GinPageIsData(page));
   ginRedoInsertEntry(buffer, isLeaf, rightChildBlkno, payload);
  }

  PageSetLSN(page, lsn);
  MarkBufferDirty(buffer);
 }
 if (BufferIsValid(buffer))
  UnlockReleaseBuffer(buffer);
}
