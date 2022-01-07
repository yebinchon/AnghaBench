
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_12__ {double version; double level; double root_blkno; int internal_pages; int leaf_pages; int empty_pages; int deleted_pages; scalar_t__ max_avail; scalar_t__ fragments; scalar_t__ free_space; } ;
struct TYPE_11__ {double btm_version; double btm_level; double btm_root; } ;
struct TYPE_10__ {scalar_t__ btpo_next; } ;
struct TYPE_9__ {int pd_special; } ;
typedef int Relation ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;
typedef int HeapTuple ;
typedef int FunctionCallInfo ;
typedef int Datum ;
typedef int BufferAccessStrategy ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;
typedef TYPE_2__* BTPageOpaque ;
typedef TYPE_3__ BTMetaPageData ;
typedef TYPE_4__ BTIndexStat ;


 int AccessShareLock ;
 int BAS_BULKREAD ;
 int BLCKSZ ;
 TYPE_3__* BTPageGetMeta (scalar_t__) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 scalar_t__ BufferGetPage (int ) ;
 int BuildTupleFromCStrings (int ,char**) ;
 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int GetAccessStrategy (int ) ;
 int HeapTupleGetDatum (int ) ;
 char* INT64_FORMAT ;
 int IS_BTREE (int ) ;
 int IS_INDEX (int ) ;
 int LockBuffer (int ,int ) ;
 int MAIN_FORKNUM ;
 scalar_t__ P_IGNORE (TYPE_2__*) ;
 scalar_t__ P_ISDELETED (TYPE_2__*) ;
 scalar_t__ P_ISLEAF (TYPE_2__*) ;
 scalar_t__ P_NONE ;
 scalar_t__ PageGetFreeSpace (scalar_t__) ;
 scalar_t__ PageGetSpecialPointer (scalar_t__) ;
 int RBM_NORMAL ;
 scalar_t__ RELATION_IS_OTHER_TEMP (int ) ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int ) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int RelationGetRelationName (int ) ;
 int ReleaseBuffer (int ) ;
 int SizeOfPageHeaderData ;
 scalar_t__ TYPEFUNC_COMPOSITE ;
 int TupleDescGetAttInMetadata (int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 scalar_t__ get_call_result_type (int ,int *,int *) ;
 char* psprintf (char*,double) ;
 char* pstrdup (char*) ;
 int relation_close (int ,int ) ;

__attribute__((used)) static Datum
pgstatindex_impl(Relation rel, FunctionCallInfo fcinfo)
{
 Datum result;
 BlockNumber nblocks;
 BlockNumber blkno;
 BTIndexStat indexStat;
 BufferAccessStrategy bstrategy = GetAccessStrategy(BAS_BULKREAD);

 if (!IS_INDEX(rel) || !IS_BTREE(rel))
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("relation \"%s\" is not a btree index",
      RelationGetRelationName(rel))));






 if (RELATION_IS_OTHER_TEMP(rel))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot access temporary tables of other sessions")));




 {
  Buffer buffer = ReadBufferExtended(rel, MAIN_FORKNUM, 0, RBM_NORMAL, bstrategy);
  Page page = BufferGetPage(buffer);
  BTMetaPageData *metad = BTPageGetMeta(page);

  indexStat.version = metad->btm_version;
  indexStat.level = metad->btm_level;
  indexStat.root_blkno = metad->btm_root;

  ReleaseBuffer(buffer);
 }


 indexStat.internal_pages = 0;
 indexStat.leaf_pages = 0;
 indexStat.empty_pages = 0;
 indexStat.deleted_pages = 0;

 indexStat.max_avail = 0;
 indexStat.free_space = 0;

 indexStat.fragments = 0;




 nblocks = RelationGetNumberOfBlocks(rel);

 for (blkno = 1; blkno < nblocks; blkno++)
 {
  Buffer buffer;
  Page page;
  BTPageOpaque opaque;

  CHECK_FOR_INTERRUPTS();


  buffer = ReadBufferExtended(rel, MAIN_FORKNUM, blkno, RBM_NORMAL, bstrategy);
  LockBuffer(buffer, BUFFER_LOCK_SHARE);

  page = BufferGetPage(buffer);
  opaque = (BTPageOpaque) PageGetSpecialPointer(page);



  if (P_ISDELETED(opaque))
   indexStat.deleted_pages++;
  else if (P_IGNORE(opaque))
   indexStat.empty_pages++;
  else if (P_ISLEAF(opaque))
  {
   int max_avail;

   max_avail = BLCKSZ - (BLCKSZ - ((PageHeader) page)->pd_special + SizeOfPageHeaderData);
   indexStat.max_avail += max_avail;
   indexStat.free_space += PageGetFreeSpace(page);

   indexStat.leaf_pages++;





   if (opaque->btpo_next != P_NONE && opaque->btpo_next < blkno)
    indexStat.fragments++;
  }
  else
   indexStat.internal_pages++;


  LockBuffer(buffer, BUFFER_LOCK_UNLOCK);
  ReleaseBuffer(buffer);
 }

 relation_close(rel, AccessShareLock);





 {
  TupleDesc tupleDesc;
  int j;
  char *values[10];
  HeapTuple tuple;


  if (get_call_result_type(fcinfo, ((void*)0), &tupleDesc) != TYPEFUNC_COMPOSITE)
   elog(ERROR, "return type must be a row type");

  j = 0;
  values[j++] = psprintf("%d", indexStat.version);
  values[j++] = psprintf("%d", indexStat.level);
  values[j++] = psprintf(INT64_FORMAT,
          (1 +
        indexStat.leaf_pages +
        indexStat.internal_pages +
        indexStat.deleted_pages +
        indexStat.empty_pages) * BLCKSZ);
  values[j++] = psprintf("%u", indexStat.root_blkno);
  values[j++] = psprintf(INT64_FORMAT, indexStat.internal_pages);
  values[j++] = psprintf(INT64_FORMAT, indexStat.leaf_pages);
  values[j++] = psprintf(INT64_FORMAT, indexStat.empty_pages);
  values[j++] = psprintf(INT64_FORMAT, indexStat.deleted_pages);
  if (indexStat.max_avail > 0)
   values[j++] = psprintf("%.2f",
           100.0 - (double) indexStat.free_space / (double) indexStat.max_avail * 100.0);
  else
   values[j++] = pstrdup("NaN");
  if (indexStat.leaf_pages > 0)
   values[j++] = psprintf("%.2f",
           (double) indexStat.fragments / (double) indexStat.leaf_pages * 100.0);
  else
   values[j++] = pstrdup("NaN");

  tuple = BuildTupleFromCStrings(TupleDescGetAttInMetadata(tupleDesc),
            values);

  result = HeapTupleGetDatum(tuple);
 }

 return result;
}
