
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pagesPerRange; int version; } ;
typedef TYPE_1__ xl_brin_createidx ;
typedef int XLogRecPtr ;
struct TYPE_10__ {double bs_numtuples; int bs_rmAccess; } ;
struct TYPE_9__ {double heap_tuples; double index_tuples; } ;
typedef int Relation ;
typedef int Page ;
typedef int IndexInfo ;
typedef TYPE_2__ IndexBuildResult ;
typedef int Buffer ;
typedef int BrinRevmap ;
typedef TYPE_3__ BrinBuildState ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BRIN_CURRENT_VERSION ;
 scalar_t__ BRIN_METAPAGE_BLKNO ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BrinGetPagesPerRange (int ) ;
 scalar_t__ BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int ERROR ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 int P_NEW ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_BRIN_ID ;
 int ReadBuffer (int ,int ) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int SizeOfBrinCreateIdx ;
 int UnlockReleaseBuffer (int ) ;
 int XLOG_BRIN_CREATE_INDEX ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,int ,int) ;
 int XLogRegisterData (char*,int ) ;
 int * brinRevmapInitialize (int ,int *,int *) ;
 int brinRevmapTerminate (int ) ;
 int brin_metapage_init (int ,int ,int ) ;
 int brinbuildCallback ;
 int elog (int ,char*,int ) ;
 int form_and_insert_tuple (TYPE_3__*) ;
 TYPE_3__* initialize_brin_buildstate (int ,int *,int ) ;
 scalar_t__ palloc (int) ;
 double table_index_build_scan (int ,int ,int *,int,int,int ,void*,int *) ;
 int terminate_brin_buildstate (TYPE_3__*) ;

IndexBuildResult *
brinbuild(Relation heap, Relation index, IndexInfo *indexInfo)
{
 IndexBuildResult *result;
 double reltuples;
 double idxtuples;
 BrinRevmap *revmap;
 BrinBuildState *state;
 Buffer meta;
 BlockNumber pagesPerRange;




 if (RelationGetNumberOfBlocks(index) != 0)
  elog(ERROR, "index \"%s\" already contains data",
    RelationGetRelationName(index));






 meta = ReadBuffer(index, P_NEW);
 Assert(BufferGetBlockNumber(meta) == BRIN_METAPAGE_BLKNO);
 LockBuffer(meta, BUFFER_LOCK_EXCLUSIVE);

 brin_metapage_init(BufferGetPage(meta), BrinGetPagesPerRange(index),
        BRIN_CURRENT_VERSION);
 MarkBufferDirty(meta);

 if (RelationNeedsWAL(index))
 {
  xl_brin_createidx xlrec;
  XLogRecPtr recptr;
  Page page;

  xlrec.version = BRIN_CURRENT_VERSION;
  xlrec.pagesPerRange = BrinGetPagesPerRange(index);

  XLogBeginInsert();
  XLogRegisterData((char *) &xlrec, SizeOfBrinCreateIdx);
  XLogRegisterBuffer(0, meta, REGBUF_WILL_INIT | REGBUF_STANDARD);

  recptr = XLogInsert(RM_BRIN_ID, XLOG_BRIN_CREATE_INDEX);

  page = BufferGetPage(meta);
  PageSetLSN(page, recptr);
 }

 UnlockReleaseBuffer(meta);




 revmap = brinRevmapInitialize(index, &pagesPerRange, ((void*)0));
 state = initialize_brin_buildstate(index, revmap, pagesPerRange);





 reltuples = table_index_build_scan(heap, index, indexInfo, 0, 1,
            brinbuildCallback, (void *) state, ((void*)0));


 form_and_insert_tuple(state);


 idxtuples = state->bs_numtuples;
 brinRevmapTerminate(state->bs_rmAccess);
 terminate_brin_buildstate(state);




 result = (IndexBuildResult *) palloc(sizeof(IndexBuildResult));

 result->heap_tuples = reltuples;
 result->index_tuples = idxtuples;

 return result;
}
