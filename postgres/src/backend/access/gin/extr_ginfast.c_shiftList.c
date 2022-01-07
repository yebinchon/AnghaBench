
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ int64 ;
struct TYPE_9__ {int ndeleted; int metadata; } ;
typedef TYPE_1__ ginxlogDeleteListPages ;
typedef int XLogRecPtr ;
struct TYPE_13__ {scalar_t__ maxoff; scalar_t__ rightlink; int flags; } ;
struct TYPE_12__ {scalar_t__ head; size_t nPendingPages; scalar_t__ nPendingHeapTuples; scalar_t__ tailFreeSize; scalar_t__ tail; } ;
struct TYPE_11__ {size_t pages_deleted; } ;
struct TYPE_10__ {int pd_lower; } ;
typedef int Relation ;
typedef TYPE_2__* PageHeader ;
typedef scalar_t__ Page ;
typedef TYPE_3__ IndexBulkDeleteResult ;
typedef TYPE_4__ GinMetaPageData ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 int GIN_DELETED ;
 int GIN_EXCLUSIVE ;
 int GIN_NDELETE_AT_ONCE ;
 TYPE_4__* GinPageGetMeta (scalar_t__) ;
 TYPE_7__* GinPageGetOpaque (scalar_t__) ;
 int GinPageIsDeleted (scalar_t__) ;
 scalar_t__ InvalidBlockNumber ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (scalar_t__,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_GIN_ID ;
 int ReadBuffer (int ,scalar_t__) ;
 int RecordFreeIndexPage (int ,scalar_t__) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int UnlockReleaseBuffer (int ) ;
 int XLOG_GIN_DELETE_LISTPAGE ;
 int XLogBeginInsert () ;
 int XLogEnsureRecordSpace (size_t,int ) ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int,int ,int) ;
 int XLogRegisterData (char*,int) ;
 int memcpy (int *,TYPE_4__*,int) ;

__attribute__((used)) static void
shiftList(Relation index, Buffer metabuffer, BlockNumber newHead,
    bool fill_fsm, IndexBulkDeleteResult *stats)
{
 Page metapage;
 GinMetaPageData *metadata;
 BlockNumber blknoToDelete;

 metapage = BufferGetPage(metabuffer);
 metadata = GinPageGetMeta(metapage);
 blknoToDelete = metadata->head;

 do
 {
  Page page;
  int i;
  int64 nDeletedHeapTuples = 0;
  ginxlogDeleteListPages data;
  Buffer buffers[GIN_NDELETE_AT_ONCE];
  BlockNumber freespace[GIN_NDELETE_AT_ONCE];

  data.ndeleted = 0;
  while (data.ndeleted < GIN_NDELETE_AT_ONCE && blknoToDelete != newHead)
  {
   freespace[data.ndeleted] = blknoToDelete;
   buffers[data.ndeleted] = ReadBuffer(index, blknoToDelete);
   LockBuffer(buffers[data.ndeleted], GIN_EXCLUSIVE);
   page = BufferGetPage(buffers[data.ndeleted]);

   data.ndeleted++;

   Assert(!GinPageIsDeleted(page));

   nDeletedHeapTuples += GinPageGetOpaque(page)->maxoff;
   blknoToDelete = GinPageGetOpaque(page)->rightlink;
  }

  if (stats)
   stats->pages_deleted += data.ndeleted;






  if (RelationNeedsWAL(index))
   XLogEnsureRecordSpace(data.ndeleted, 0);

  START_CRIT_SECTION();

  metadata->head = blknoToDelete;

  Assert(metadata->nPendingPages >= data.ndeleted);
  metadata->nPendingPages -= data.ndeleted;
  Assert(metadata->nPendingHeapTuples >= nDeletedHeapTuples);
  metadata->nPendingHeapTuples -= nDeletedHeapTuples;

  if (blknoToDelete == InvalidBlockNumber)
  {
   metadata->tail = InvalidBlockNumber;
   metadata->tailFreeSize = 0;
   metadata->nPendingPages = 0;
   metadata->nPendingHeapTuples = 0;
  }
  ((PageHeader) metapage)->pd_lower =
   ((char *) metadata + sizeof(GinMetaPageData)) - (char *) metapage;

  MarkBufferDirty(metabuffer);

  for (i = 0; i < data.ndeleted; i++)
  {
   page = BufferGetPage(buffers[i]);
   GinPageGetOpaque(page)->flags = GIN_DELETED;
   MarkBufferDirty(buffers[i]);
  }

  if (RelationNeedsWAL(index))
  {
   XLogRecPtr recptr;

   XLogBeginInsert();
   XLogRegisterBuffer(0, metabuffer,
          REGBUF_WILL_INIT | REGBUF_STANDARD);
   for (i = 0; i < data.ndeleted; i++)
    XLogRegisterBuffer(i + 1, buffers[i], REGBUF_WILL_INIT);

   memcpy(&data.metadata, metadata, sizeof(GinMetaPageData));

   XLogRegisterData((char *) &data,
        sizeof(ginxlogDeleteListPages));

   recptr = XLogInsert(RM_GIN_ID, XLOG_GIN_DELETE_LISTPAGE);
   PageSetLSN(metapage, recptr);

   for (i = 0; i < data.ndeleted; i++)
   {
    page = BufferGetPage(buffers[i]);
    PageSetLSN(page, recptr);
   }
  }

  for (i = 0; i < data.ndeleted; i++)
   UnlockReleaseBuffer(buffers[i]);

  END_CRIT_SECTION();

  for (i = 0; fill_fsm && i < data.ndeleted; i++)
   RecordFreeIndexPage(index, freespace[i]);

 } while (blknoToDelete != newHead);
}
