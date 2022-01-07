
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;


struct TYPE_25__ {int nEnd; scalar_t__ nStart; int notFullPage; } ;
struct TYPE_24__ {int sizeOfBloomTuple; } ;
struct TYPE_23__ {int heapPtr; } ;
struct TYPE_22__ {int tuples_removed; } ;
struct TYPE_21__ {int strategy; int index; } ;
struct TYPE_20__ {scalar_t__ pd_lower; } ;
struct TYPE_19__ {int maxoff; } ;
typedef int Relation ;
typedef scalar_t__ Pointer ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;
typedef TYPE_2__ IndexVacuumInfo ;
typedef TYPE_3__ IndexBulkDeleteResult ;
typedef scalar_t__ (* IndexBulkDeleteCallback ) (int *,void*) ;
typedef int GenericXLogState ;
typedef scalar_t__* FreeBlockNumberArray ;
typedef int Buffer ;
typedef TYPE_4__ BloomTuple ;
typedef TYPE_5__ BloomState ;
typedef TYPE_6__ BloomMetaPageData ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 scalar_t__ BLOOM_HEAD_BLKNO ;
 int BLOOM_METAPAGE_BLKNO ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BloomMetaBlockN ;
 int BloomPageGetFreeSpace (TYPE_5__*,scalar_t__) ;
 scalar_t__ BloomPageGetMaxOffset (scalar_t__) ;
 TYPE_6__* BloomPageGetMeta (scalar_t__) ;
 TYPE_4__* BloomPageGetNextTuple (TYPE_5__*,TYPE_4__*) ;
 TYPE_13__* BloomPageGetOpaque (scalar_t__) ;
 TYPE_4__* BloomPageGetTuple (TYPE_5__*,scalar_t__,int ) ;
 scalar_t__ BloomPageIsDeleted (scalar_t__) ;
 int BloomPageSetDeleted (scalar_t__) ;
 int FirstOffsetNumber ;
 int GenericXLogAbort (int *) ;
 int GenericXLogFinish (int *) ;
 scalar_t__ GenericXLogRegisterBuffer (int *,int ,int ) ;
 int * GenericXLogStart (int ) ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 int OffsetNumberNext (scalar_t__) ;
 scalar_t__ PageIsNew (scalar_t__) ;
 int RBM_NORMAL ;
 int ReadBuffer (int ,int ) ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int ) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int UnlockReleaseBuffer (int ) ;
 int initBloomState (TYPE_5__*,int ) ;
 int memcpy (int ,scalar_t__*,int) ;
 int memmove (scalar_t__,scalar_t__,int ) ;
 scalar_t__ palloc0 (int) ;
 int vacuum_delay_point () ;

IndexBulkDeleteResult *
blbulkdelete(IndexVacuumInfo *info, IndexBulkDeleteResult *stats,
    IndexBulkDeleteCallback callback, void *callback_state)
{
 Relation index = info->index;
 BlockNumber blkno,
    npages;
 FreeBlockNumberArray notFullPage;
 int countPage = 0;
 BloomState state;
 Buffer buffer;
 Page page;
 BloomMetaPageData *metaData;
 GenericXLogState *gxlogState;

 if (stats == ((void*)0))
  stats = (IndexBulkDeleteResult *) palloc0(sizeof(IndexBulkDeleteResult));

 initBloomState(&state, index);





 npages = RelationGetNumberOfBlocks(index);
 for (blkno = BLOOM_HEAD_BLKNO; blkno < npages; blkno++)
 {
  BloomTuple *itup,
       *itupPtr,
       *itupEnd;

  vacuum_delay_point();

  buffer = ReadBufferExtended(index, MAIN_FORKNUM, blkno,
         RBM_NORMAL, info->strategy);

  LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);
  gxlogState = GenericXLogStart(index);
  page = GenericXLogRegisterBuffer(gxlogState, buffer, 0);


  if (PageIsNew(page) || BloomPageIsDeleted(page))
  {
   UnlockReleaseBuffer(buffer);
   GenericXLogAbort(gxlogState);
   continue;
  }





  itup = itupPtr = BloomPageGetTuple(&state, page, FirstOffsetNumber);
  itupEnd = BloomPageGetTuple(&state, page,
         OffsetNumberNext(BloomPageGetMaxOffset(page)));
  while (itup < itupEnd)
  {

   if (callback(&itup->heapPtr, callback_state))
   {

    BloomPageGetOpaque(page)->maxoff--;
    stats->tuples_removed += 1;
   }
   else
   {

    if (itupPtr != itup)
     memmove((Pointer) itupPtr, (Pointer) itup,
       state.sizeOfBloomTuple);
    itupPtr = BloomPageGetNextTuple(&state, itupPtr);
   }

   itup = BloomPageGetNextTuple(&state, itup);
  }


  Assert(itupPtr == BloomPageGetTuple(&state, page,
           OffsetNumberNext(BloomPageGetMaxOffset(page))));





  if (BloomPageGetMaxOffset(page) != 0 &&
   BloomPageGetFreeSpace(&state, page) >= state.sizeOfBloomTuple &&
   countPage < BloomMetaBlockN)
   notFullPage[countPage++] = blkno;


  if (itupPtr != itup)
  {

   if (BloomPageGetMaxOffset(page) == 0)
    BloomPageSetDeleted(page);

   ((PageHeader) page)->pd_lower = (Pointer) itupPtr - page;

   GenericXLogFinish(gxlogState);
  }
  else
  {

   GenericXLogAbort(gxlogState);
  }
  UnlockReleaseBuffer(buffer);
 }






 buffer = ReadBuffer(index, BLOOM_METAPAGE_BLKNO);
 LockBuffer(buffer, BUFFER_LOCK_EXCLUSIVE);

 gxlogState = GenericXLogStart(index);
 page = GenericXLogRegisterBuffer(gxlogState, buffer, 0);

 metaData = BloomPageGetMeta(page);
 memcpy(metaData->notFullPage, notFullPage, sizeof(BlockNumber) * countPage);
 metaData->nStart = 0;
 metaData->nEnd = countPage;

 GenericXLogFinish(gxlogState);
 UnlockReleaseBuffer(buffer);

 return stats;
}
