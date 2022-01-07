
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int size; } ;
typedef TYPE_1__ ginxlogCreatePostingTree ;
typedef int XLogRecPtr ;
struct TYPE_8__ {int rightlink; } ;
struct TYPE_7__ {int nDataPages; } ;
typedef int Relation ;
typedef scalar_t__ Pointer ;
typedef scalar_t__ Page ;
typedef int ItemPointerData ;
typedef TYPE_2__ GinStatsData ;
typedef int GinPostingList ;
typedef int Buffer ;
typedef int BlockNumber ;


 int BLCKSZ ;
 int BufferGetBlockNumber (int ) ;
 scalar_t__ BufferGetPage (int ) ;
 int DEBUG2 ;
 int END_CRIT_SECTION () ;
 int GIN_COMPRESSED ;
 int GIN_DATA ;
 int GIN_LEAF ;
 scalar_t__ GinDataLeafPageGetPostingList (scalar_t__) ;
 int GinDataPageMaxDataSize ;
 int GinDataPageSetDataSize (scalar_t__,int) ;
 int GinInitPage (scalar_t__,int,int ) ;
 int GinNewBuffer (int ) ;
 TYPE_5__* GinPageGetOpaque (scalar_t__) ;
 int GinPostingListSegmentMaxSize ;
 int InvalidBlockNumber ;
 int MarkBufferDirty (int ) ;
 int PageRestoreTempPage (scalar_t__,scalar_t__) ;
 int PageSetLSN (scalar_t__,int ) ;
 int PredicateLockPageSplit (int ,int ,int ) ;
 int REGBUF_WILL_INIT ;
 int RM_GIN_ID ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfGinPostingList (int *) ;
 int UnlockReleaseBuffer (int ) ;
 int XLOG_GIN_CREATE_PTREE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,int ,int ) ;
 int XLogRegisterData (char*,int) ;
 int elog (int ,char*,int) ;
 int * ginCompressPostingList (int *,int,int ,int*) ;
 int ginInsertItemPointers (int ,int ,int *,int,TYPE_2__*) ;
 int memcpy (scalar_t__,int *,int) ;
 scalar_t__ palloc (int ) ;
 int pfree (int *) ;

BlockNumber
createPostingTree(Relation index, ItemPointerData *items, uint32 nitems,
      GinStatsData *buildStats, Buffer entrybuffer)
{
 BlockNumber blkno;
 Buffer buffer;
 Page tmppage;
 Page page;
 Pointer ptr;
 int nrootitems;
 int rootsize;
 bool is_build = (buildStats != ((void*)0));


 tmppage = (Page) palloc(BLCKSZ);
 GinInitPage(tmppage, GIN_DATA | GIN_LEAF | GIN_COMPRESSED, BLCKSZ);
 GinPageGetOpaque(tmppage)->rightlink = InvalidBlockNumber;





 nrootitems = 0;
 rootsize = 0;
 ptr = (Pointer) GinDataLeafPageGetPostingList(tmppage);
 while (nrootitems < nitems)
 {
  GinPostingList *segment;
  int npacked;
  int segsize;

  segment = ginCompressPostingList(&items[nrootitems],
           nitems - nrootitems,
           GinPostingListSegmentMaxSize,
           &npacked);
  segsize = SizeOfGinPostingList(segment);
  if (rootsize + segsize > GinDataPageMaxDataSize)
   break;

  memcpy(ptr, segment, segsize);
  ptr += segsize;
  rootsize += segsize;
  nrootitems += npacked;
  pfree(segment);
 }
 GinDataPageSetDataSize(tmppage, rootsize);




 buffer = GinNewBuffer(index);
 page = BufferGetPage(buffer);
 blkno = BufferGetBlockNumber(buffer);





 PredicateLockPageSplit(index, BufferGetBlockNumber(entrybuffer), blkno);

 START_CRIT_SECTION();

 PageRestoreTempPage(tmppage, page);
 MarkBufferDirty(buffer);

 if (RelationNeedsWAL(index) && !is_build)
 {
  XLogRecPtr recptr;
  ginxlogCreatePostingTree data;

  data.size = rootsize;

  XLogBeginInsert();
  XLogRegisterData((char *) &data, sizeof(ginxlogCreatePostingTree));

  XLogRegisterData((char *) GinDataLeafPageGetPostingList(page),
       rootsize);
  XLogRegisterBuffer(0, buffer, REGBUF_WILL_INIT);

  recptr = XLogInsert(RM_GIN_ID, XLOG_GIN_CREATE_PTREE);
  PageSetLSN(page, recptr);
 }

 UnlockReleaseBuffer(buffer);

 END_CRIT_SECTION();


 if (buildStats)
  buildStats->nDataPages++;

 elog(DEBUG2, "created GIN posting tree with %d items", nrootitems);




 if (nitems > nrootitems)
 {
  ginInsertItemPointers(index, blkno,
         items + nrootitems,
         nitems - nrootitems,
         buildStats);
 }

 return blkno;
}
