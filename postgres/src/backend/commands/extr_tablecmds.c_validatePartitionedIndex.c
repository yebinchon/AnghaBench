
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;
typedef struct TYPE_18__ TYPE_13__ ;


struct TYPE_24__ {int indisvalid; } ;
struct TYPE_23__ {int inhrelid; } ;
struct TYPE_22__ {TYPE_2__* rd_index; TYPE_1__* rd_rel; TYPE_13__* rd_indextuple; } ;
struct TYPE_21__ {int indisvalid; } ;
struct TYPE_20__ {scalar_t__ relkind; scalar_t__ relispartition; } ;
struct TYPE_19__ {int nparts; } ;
struct TYPE_18__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_3__* Relation ;
typedef int Oid ;
typedef int * HeapTuple ;
typedef TYPE_4__* Form_pg_inherits ;
typedef TYPE_5__* Form_pg_index ;


 int AccessExclusiveLock ;
 int AccessShareLock ;
 int Anum_pg_inherits_inhparent ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int CatalogTupleUpdate (TYPE_3__*,int *,int *) ;
 int CommandCounterIncrement () ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int *) ;
 int HeapTupleIsValid (int *) ;
 int INDEXRELID ;
 int IndexRelationId ;
 int InheritsParentIndexId ;
 int InheritsRelationId ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 TYPE_15__* RelationGetPartitionDesc (TYPE_3__*) ;
 int RelationGetRelid (TYPE_3__*) ;
 int ReleaseSysCache (int *) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int get_partition_parent (int ) ;
 int * heap_copytuple (TYPE_13__*) ;
 int relation_close (TYPE_3__*,int ) ;
 TYPE_3__* relation_open (int ,int ) ;
 int systable_beginscan (TYPE_3__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int * systable_getnext (int ) ;
 int table_close (TYPE_3__*,int ) ;
 TYPE_3__* table_open (int ,int ) ;

__attribute__((used)) static void
validatePartitionedIndex(Relation partedIdx, Relation partedTbl)
{
 Relation inheritsRel;
 SysScanDesc scan;
 ScanKeyData key;
 int tuples = 0;
 HeapTuple inhTup;
 bool updated = 0;

 Assert(partedIdx->rd_rel->relkind == RELKIND_PARTITIONED_INDEX);






 inheritsRel = table_open(InheritsRelationId, AccessShareLock);
 ScanKeyInit(&key, Anum_pg_inherits_inhparent,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(partedIdx)));
 scan = systable_beginscan(inheritsRel, InheritsParentIndexId, 1,
         ((void*)0), 1, &key);
 while ((inhTup = systable_getnext(scan)) != ((void*)0))
 {
  Form_pg_inherits inhForm = (Form_pg_inherits) GETSTRUCT(inhTup);
  HeapTuple indTup;
  Form_pg_index indexForm;

  indTup = SearchSysCache1(INDEXRELID,
         ObjectIdGetDatum(inhForm->inhrelid));
  if (!HeapTupleIsValid(indTup))
   elog(ERROR, "cache lookup failed for index %u", inhForm->inhrelid);
  indexForm = (Form_pg_index) GETSTRUCT(indTup);
  if (indexForm->indisvalid)
   tuples += 1;
  ReleaseSysCache(indTup);
 }


 systable_endscan(scan);
 table_close(inheritsRel, AccessShareLock);





 if (tuples == RelationGetPartitionDesc(partedTbl)->nparts)
 {
  Relation idxRel;
  HeapTuple newtup;

  idxRel = table_open(IndexRelationId, RowExclusiveLock);

  newtup = heap_copytuple(partedIdx->rd_indextuple);
  ((Form_pg_index) GETSTRUCT(newtup))->indisvalid = 1;
  updated = 1;

  CatalogTupleUpdate(idxRel, &partedIdx->rd_indextuple->t_self, newtup);

  table_close(idxRel, RowExclusiveLock);
 }





 if (updated && partedIdx->rd_rel->relispartition)
 {
  Oid parentIdxId,
     parentTblId;
  Relation parentIdx,
     parentTbl;


  CommandCounterIncrement();

  parentIdxId = get_partition_parent(RelationGetRelid(partedIdx));
  parentTblId = get_partition_parent(RelationGetRelid(partedTbl));
  parentIdx = relation_open(parentIdxId, AccessExclusiveLock);
  parentTbl = relation_open(parentTblId, AccessExclusiveLock);
  Assert(!parentIdx->rd_index->indisvalid);

  validatePartitionedIndex(parentIdx, parentTbl);

  relation_close(parentIdx, AccessExclusiveLock);
  relation_close(parentTbl, AccessExclusiveLock);
 }
}
