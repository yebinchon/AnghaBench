
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_5__ {int pending_tuples; int pending_pages; int version; } ;
struct TYPE_4__ {int nPendingHeapTuples; int nPendingPages; int ginVersion; } ;
typedef int Relation ;
typedef int Page ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__ GinMetaPageData ;
typedef TYPE_2__ GinIndexStat ;
typedef int FunctionCallInfo ;
typedef int Datum ;
typedef int Buffer ;


 int AccessShareLock ;
 int BufferGetPage (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int GIN_METAPAGE_BLKNO ;
 int GIN_SHARE ;
 TYPE_1__* GinPageGetMeta (int ) ;
 int HeapTupleGetDatum (int ) ;
 int IS_GIN (int ) ;
 int IS_INDEX (int ) ;
 int Int32GetDatum (int ) ;
 int Int64GetDatum (int ) ;
 int LockBuffer (int ,int ) ;
 scalar_t__ RELATION_IS_OTHER_TEMP (int ) ;
 int ReadBuffer (int ,int ) ;
 int RelationGetRelationName (int ) ;
 scalar_t__ TYPEFUNC_COMPOSITE ;
 int UInt32GetDatum (int ) ;
 int UnlockReleaseBuffer (int ) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 scalar_t__ get_call_result_type (int ,int *,int *) ;
 int heap_form_tuple (int ,int *,int*) ;
 int relation_close (int ,int ) ;
 int relation_open (int ,int ) ;

Datum
pgstatginindex_internal(Oid relid, FunctionCallInfo fcinfo)
{
 Relation rel;
 Buffer buffer;
 Page page;
 GinMetaPageData *metadata;
 GinIndexStat stats;
 HeapTuple tuple;
 TupleDesc tupleDesc;
 Datum values[3];
 bool nulls[3] = {0, 0, 0};
 Datum result;

 rel = relation_open(relid, AccessShareLock);

 if (!IS_INDEX(rel) || !IS_GIN(rel))
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("relation \"%s\" is not a GIN index",
      RelationGetRelationName(rel))));






 if (RELATION_IS_OTHER_TEMP(rel))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot access temporary indexes of other sessions")));




 buffer = ReadBuffer(rel, GIN_METAPAGE_BLKNO);
 LockBuffer(buffer, GIN_SHARE);
 page = BufferGetPage(buffer);
 metadata = GinPageGetMeta(page);

 stats.version = metadata->ginVersion;
 stats.pending_pages = metadata->nPendingPages;
 stats.pending_tuples = metadata->nPendingHeapTuples;

 UnlockReleaseBuffer(buffer);
 relation_close(rel, AccessShareLock);




 if (get_call_result_type(fcinfo, ((void*)0), &tupleDesc) != TYPEFUNC_COMPOSITE)
  elog(ERROR, "return type must be a row type");

 values[0] = Int32GetDatum(stats.version);
 values[1] = UInt32GetDatum(stats.pending_pages);
 values[2] = Int64GetDatum(stats.pending_tuples);




 tuple = heap_form_tuple(tupleDesc, values, nulls);
 result = HeapTupleGetDatum(tuple);

 return result;
}
