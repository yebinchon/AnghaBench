
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ int32 ;
typedef scalar_t__ float4 ;
typedef int TableScanDesc ;
struct TYPE_2__ {scalar_t__ relkind; int relhasindex; scalar_t__ relpages; scalar_t__ reltuples; scalar_t__ relallvisible; } ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;
typedef scalar_t__ BlockNumber ;


 int Anum_pg_class_oid ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int CacheInvalidateRelcacheByTuple (int ) ;
 int ERROR ;
 int F_OIDEQ ;
 int ForwardScanDirection ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ IsBootstrapProcessingMode () ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ RELKIND_INDEX ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 int RELOID ;
 scalar_t__ ReindexIsProcessingHeap (int ) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int RelationGetRelid (int ) ;
 int RelationRelationId ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SearchSysCacheCopy1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int heap_copytuple (int ) ;
 int heap_freetuple (int ) ;
 int heap_getnext (int ,int ) ;
 int heap_inplace_update (int ,int ) ;
 int table_beginscan_catalog (int ,int,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;
 int visibilitymap_count (int ,scalar_t__*,int *) ;

__attribute__((used)) static void
index_update_stats(Relation rel,
       bool hasindex,
       double reltuples)
{
 Oid relid = RelationGetRelid(rel);
 Relation pg_class;
 HeapTuple tuple;
 Form_pg_class rd_rel;
 bool dirty;
 pg_class = table_open(RelationRelationId, RowExclusiveLock);






 if (IsBootstrapProcessingMode() ||
  ReindexIsProcessingHeap(RelationRelationId))
 {

  TableScanDesc pg_class_scan;
  ScanKeyData key[1];

  ScanKeyInit(&key[0],
     Anum_pg_class_oid,
     BTEqualStrategyNumber, F_OIDEQ,
     ObjectIdGetDatum(relid));

  pg_class_scan = table_beginscan_catalog(pg_class, 1, key);
  tuple = heap_getnext(pg_class_scan, ForwardScanDirection);
  tuple = heap_copytuple(tuple);
  table_endscan(pg_class_scan);
 }
 else
 {

  tuple = SearchSysCacheCopy1(RELOID, ObjectIdGetDatum(relid));
 }

 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "could not find tuple for relation %u", relid);
 rd_rel = (Form_pg_class) GETSTRUCT(tuple);


 Assert(rd_rel->relkind != RELKIND_PARTITIONED_INDEX);



 dirty = 0;
 if (rd_rel->relhasindex != hasindex)
 {
  rd_rel->relhasindex = hasindex;
  dirty = 1;
 }

 if (reltuples >= 0)
 {
  BlockNumber relpages = RelationGetNumberOfBlocks(rel);
  BlockNumber relallvisible;

  if (rd_rel->relkind != RELKIND_INDEX)
   visibilitymap_count(rel, &relallvisible, ((void*)0));
  else
   relallvisible = 0;

  if (rd_rel->relpages != (int32) relpages)
  {
   rd_rel->relpages = (int32) relpages;
   dirty = 1;
  }
  if (rd_rel->reltuples != (float4) reltuples)
  {
   rd_rel->reltuples = (float4) reltuples;
   dirty = 1;
  }
  if (rd_rel->relallvisible != (int32) relallvisible)
  {
   rd_rel->relallvisible = (int32) relallvisible;
   dirty = 1;
  }
 }




 if (dirty)
 {
  heap_inplace_update(pg_class, tuple);

 }
 else
 {

  CacheInvalidateRelcacheByTuple(tuple);
 }

 heap_freetuple(tuple);

 table_close(pg_class, RowExclusiveLock);
}
