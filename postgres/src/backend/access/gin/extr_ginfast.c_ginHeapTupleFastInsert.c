
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_19__ ;


struct TYPE_24__ {int ntuples; scalar_t__ newRightlink; scalar_t__ prevTail; char metadata; int node; } ;
typedef TYPE_1__ ginxlogUpdateMeta ;
typedef int XLogRecPtr ;
struct TYPE_29__ {scalar_t__ head; scalar_t__ tailFreeSize; scalar_t__ tail; int nPendingPages; scalar_t__ nPendingHeapTuples; } ;
struct TYPE_28__ {TYPE_2__* index; } ;
struct TYPE_27__ {int ntuples; scalar_t__ sumsize; TYPE_6__** tuples; } ;
struct TYPE_26__ {int pd_lower; } ;
struct TYPE_25__ {int rd_node; } ;
struct TYPE_23__ {scalar_t__ rightlink; scalar_t__ maxoff; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__* PageHeader ;
typedef int * Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemIdData ;
typedef int Item ;
typedef TYPE_4__ GinTupleCollector ;
typedef TYPE_5__ GinState ;
typedef TYPE_6__ GinMetaPageData ;
typedef scalar_t__ Buffer ;


 int Assert (int) ;
 int * BufferGetPage (scalar_t__) ;
 int CheckForSerializableConflictIn (TYPE_2__*,int *,scalar_t__) ;
 int END_CRIT_SECTION () ;
 int ERROR ;
 scalar_t__ FirstOffsetNumber ;
 int GIN_EXCLUSIVE ;
 scalar_t__ GIN_METAPAGE_BLKNO ;
 int GIN_PAGE_FREESIZE ;
 int GIN_UNLOCK ;
 int GinGetPendingListCleanupSize (TYPE_2__*) ;
 scalar_t__ GinListPageSize ;
 TYPE_6__* GinPageGetMeta (int *) ;
 TYPE_19__* GinPageGetOpaque (int *) ;
 int IndexTupleSize (TYPE_6__*) ;
 scalar_t__ InvalidBlockNumber ;
 scalar_t__ InvalidBuffer ;
 scalar_t__ InvalidOffsetNumber ;
 int LockBuffer (scalar_t__,int ) ;
 int MarkBufferDirty (scalar_t__) ;
 scalar_t__ OffsetNumberNext (int ) ;
 scalar_t__ PageAddItem (int *,int ,int,scalar_t__,int,int) ;
 scalar_t__ PageGetExactFreeSpace (int *) ;
 int PageGetMaxOffsetNumber (int *) ;
 scalar_t__ PageIsEmpty (int *) ;
 int PageSetLSN (int *,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_GIN_ID ;
 scalar_t__ ReadBuffer (TYPE_2__*,scalar_t__) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RelationNeedsWAL (TYPE_2__*) ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (scalar_t__) ;
 int XLOG_GIN_UPDATE_META_PAGE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int,char*,int) ;
 int XLogRegisterBuffer (int,scalar_t__,int) ;
 int XLogRegisterData (char*,int) ;
 int elog (int ,char*,int ) ;
 int ginInsertCleanup (TYPE_5__*,int,int,int,int *) ;
 int makeSublist (TYPE_2__*,TYPE_6__**,int,TYPE_6__*) ;
 int memcpy (char*,TYPE_6__*,int) ;
 int memset (TYPE_6__*,int ,int) ;
 scalar_t__ palloc (scalar_t__) ;

void
ginHeapTupleFastInsert(GinState *ginstate, GinTupleCollector *collector)
{
 Relation index = ginstate->index;
 Buffer metabuffer;
 Page metapage;
 GinMetaPageData *metadata = ((void*)0);
 Buffer buffer = InvalidBuffer;
 Page page = ((void*)0);
 ginxlogUpdateMeta data;
 bool separateList = 0;
 bool needCleanup = 0;
 int cleanupSize;
 bool needWal;

 if (collector->ntuples == 0)
  return;

 needWal = RelationNeedsWAL(index);

 data.node = index->rd_node;
 data.ntuples = 0;
 data.newRightlink = data.prevTail = InvalidBlockNumber;

 metabuffer = ReadBuffer(index, GIN_METAPAGE_BLKNO);
 metapage = BufferGetPage(metabuffer);






 CheckForSerializableConflictIn(index, ((void*)0), metabuffer);

 if (collector->sumsize + collector->ntuples * sizeof(ItemIdData) > GinListPageSize)
 {



  separateList = 1;
 }
 else
 {
  LockBuffer(metabuffer, GIN_EXCLUSIVE);
  metadata = GinPageGetMeta(metapage);

  if (metadata->head == InvalidBlockNumber ||
   collector->sumsize + collector->ntuples * sizeof(ItemIdData) > metadata->tailFreeSize)
  {






   separateList = 1;
   LockBuffer(metabuffer, GIN_UNLOCK);
  }
 }

 if (separateList)
 {



  GinMetaPageData sublist;

  memset(&sublist, 0, sizeof(GinMetaPageData));
  makeSublist(index, collector->tuples, collector->ntuples, &sublist);

  if (needWal)
   XLogBeginInsert();




  LockBuffer(metabuffer, GIN_EXCLUSIVE);
  metadata = GinPageGetMeta(metapage);

  if (metadata->head == InvalidBlockNumber)
  {



   START_CRIT_SECTION();

   metadata->head = sublist.head;
   metadata->tail = sublist.tail;
   metadata->tailFreeSize = sublist.tailFreeSize;

   metadata->nPendingPages = sublist.nPendingPages;
   metadata->nPendingHeapTuples = sublist.nPendingHeapTuples;
  }
  else
  {



   data.prevTail = metadata->tail;
   data.newRightlink = sublist.head;

   buffer = ReadBuffer(index, metadata->tail);
   LockBuffer(buffer, GIN_EXCLUSIVE);
   page = BufferGetPage(buffer);

   Assert(GinPageGetOpaque(page)->rightlink == InvalidBlockNumber);

   START_CRIT_SECTION();

   GinPageGetOpaque(page)->rightlink = sublist.head;

   MarkBufferDirty(buffer);

   metadata->tail = sublist.tail;
   metadata->tailFreeSize = sublist.tailFreeSize;

   metadata->nPendingPages += sublist.nPendingPages;
   metadata->nPendingHeapTuples += sublist.nPendingHeapTuples;

   if (needWal)
    XLogRegisterBuffer(1, buffer, REGBUF_STANDARD);
  }
 }
 else
 {



  OffsetNumber l,
     off;
  int i,
     tupsize;
  char *ptr;
  char *collectordata;

  buffer = ReadBuffer(index, metadata->tail);
  LockBuffer(buffer, GIN_EXCLUSIVE);
  page = BufferGetPage(buffer);

  off = (PageIsEmpty(page)) ? FirstOffsetNumber :
   OffsetNumberNext(PageGetMaxOffsetNumber(page));

  collectordata = ptr = (char *) palloc(collector->sumsize);

  data.ntuples = collector->ntuples;

  if (needWal)
   XLogBeginInsert();

  START_CRIT_SECTION();




  Assert(GinPageGetOpaque(page)->maxoff <= metadata->nPendingHeapTuples);
  GinPageGetOpaque(page)->maxoff++;
  metadata->nPendingHeapTuples++;

  for (i = 0; i < collector->ntuples; i++)
  {
   tupsize = IndexTupleSize(collector->tuples[i]);
   l = PageAddItem(page, (Item) collector->tuples[i], tupsize, off, 0, 0);

   if (l == InvalidOffsetNumber)
    elog(ERROR, "failed to add item to index page in \"%s\"",
      RelationGetRelationName(index));

   memcpy(ptr, collector->tuples[i], tupsize);
   ptr += tupsize;

   off++;
  }

  Assert((ptr - collectordata) <= collector->sumsize);
  if (needWal)
  {
   XLogRegisterBuffer(1, buffer, REGBUF_STANDARD);
   XLogRegisterBufData(1, collectordata, collector->sumsize);
  }

  metadata->tailFreeSize = PageGetExactFreeSpace(page);

  MarkBufferDirty(buffer);
 }
 ((PageHeader) metapage)->pd_lower =
  ((char *) metadata + sizeof(GinMetaPageData)) - (char *) metapage;




 MarkBufferDirty(metabuffer);

 if (needWal)
 {
  XLogRecPtr recptr;

  memcpy(&data.metadata, metadata, sizeof(GinMetaPageData));

  XLogRegisterBuffer(0, metabuffer, REGBUF_WILL_INIT | REGBUF_STANDARD);
  XLogRegisterData((char *) &data, sizeof(ginxlogUpdateMeta));

  recptr = XLogInsert(RM_GIN_ID, XLOG_GIN_UPDATE_META_PAGE);
  PageSetLSN(metapage, recptr);

  if (buffer != InvalidBuffer)
  {
   PageSetLSN(page, recptr);
  }
 }

 if (buffer != InvalidBuffer)
  UnlockReleaseBuffer(buffer);
 cleanupSize = GinGetPendingListCleanupSize(index);
 if (metadata->nPendingPages * GIN_PAGE_FREESIZE > cleanupSize * 1024L)
  needCleanup = 1;

 UnlockReleaseBuffer(metabuffer);

 END_CRIT_SECTION();





 if (needCleanup)
  ginInsertCleanup(ginstate, 0, 1, 0, ((void*)0));
}
