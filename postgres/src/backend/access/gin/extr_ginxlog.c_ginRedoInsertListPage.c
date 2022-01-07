
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ rightlink; int ntuples; } ;
typedef TYPE_1__ ginxlogInsertListPage ;
typedef int XLogRecPtr ;
struct TYPE_9__ {int EndRecPtr; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_10__ {scalar_t__ rightlink; int maxoff; } ;
typedef int Size ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int Item ;
typedef scalar_t__ IndexTuple ;
typedef int Buffer ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 int ERROR ;
 scalar_t__ FirstOffsetNumber ;
 int GIN_LIST ;
 int GinInitBuffer (int ,int ) ;
 TYPE_7__* GinPageGetOpaque (int ) ;
 int GinPageSetFullRow (int ) ;
 int IndexTupleSize (scalar_t__) ;
 scalar_t__ InvalidBlockNumber ;
 scalar_t__ InvalidOffsetNumber ;
 int MarkBufferDirty (int ) ;
 scalar_t__ PageAddItem (int ,int ,int,scalar_t__,int,int) ;
 int PageSetLSN (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLogInitBufferForRedo (TYPE_2__*,int ) ;
 char* XLogRecGetBlockData (TYPE_2__*,int ,int*) ;
 scalar_t__ XLogRecGetData (TYPE_2__*) ;
 int elog (int ,char*) ;

__attribute__((used)) static void
ginRedoInsertListPage(XLogReaderState *record)
{
 XLogRecPtr lsn = record->EndRecPtr;
 ginxlogInsertListPage *data = (ginxlogInsertListPage *) XLogRecGetData(record);
 Buffer buffer;
 Page page;
 OffsetNumber l,
    off = FirstOffsetNumber;
 int i,
    tupsize;
 char *payload;
 IndexTuple tuples;
 Size totaltupsize;


 buffer = XLogInitBufferForRedo(record, 0);
 page = BufferGetPage(buffer);

 GinInitBuffer(buffer, GIN_LIST);
 GinPageGetOpaque(page)->rightlink = data->rightlink;
 if (data->rightlink == InvalidBlockNumber)
 {

  GinPageSetFullRow(page);
  GinPageGetOpaque(page)->maxoff = 1;
 }
 else
 {
  GinPageGetOpaque(page)->maxoff = 0;
 }

 payload = XLogRecGetBlockData(record, 0, &totaltupsize);

 tuples = (IndexTuple) payload;
 for (i = 0; i < data->ntuples; i++)
 {
  tupsize = IndexTupleSize(tuples);

  l = PageAddItem(page, (Item) tuples, tupsize, off, 0, 0);

  if (l == InvalidOffsetNumber)
   elog(ERROR, "failed to add item to index page");

  tuples = (IndexTuple) (((char *) tuples) + tupsize);
  off++;
 }
 Assert((char *) tuples == payload + totaltupsize);

 PageSetLSN(page, lsn);
 MarkBufferDirty(buffer);

 UnlockReleaseBuffer(buffer);
}
