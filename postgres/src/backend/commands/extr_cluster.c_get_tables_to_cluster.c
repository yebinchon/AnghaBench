
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_5__ {int indexrelid; int indrelid; } ;
struct TYPE_4__ {int indexOid; int tableOid; } ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef TYPE_1__ RelToCluster ;
typedef int MemoryContext ;
typedef int List ;
typedef int * HeapTuple ;
typedef TYPE_2__* Form_pg_index ;


 int AccessShareLock ;
 int Anum_pg_index_indisclustered ;
 int BTEqualStrategyNumber ;
 int BoolGetDatum (int) ;
 int F_BOOLEQ ;
 int ForwardScanDirection ;
 scalar_t__ GETSTRUCT (int *) ;
 int GetUserId () ;
 int IndexRelationId ;
 int MemoryContextSwitchTo (int ) ;
 int * NIL ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int * heap_getnext (int ,int ) ;
 int * lappend (int *,TYPE_1__*) ;
 scalar_t__ palloc (int) ;
 int pg_class_ownercheck (int ,int ) ;
 int relation_close (int ,int ) ;
 int table_beginscan_catalog (int ,int,int *) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static List *
get_tables_to_cluster(MemoryContext cluster_context)
{
 Relation indRelation;
 TableScanDesc scan;
 ScanKeyData entry;
 HeapTuple indexTuple;
 Form_pg_index index;
 MemoryContext old_context;
 RelToCluster *rvtc;
 List *rvs = NIL;







 indRelation = table_open(IndexRelationId, AccessShareLock);
 ScanKeyInit(&entry,
    Anum_pg_index_indisclustered,
    BTEqualStrategyNumber, F_BOOLEQ,
    BoolGetDatum(1));
 scan = table_beginscan_catalog(indRelation, 1, &entry);
 while ((indexTuple = heap_getnext(scan, ForwardScanDirection)) != ((void*)0))
 {
  index = (Form_pg_index) GETSTRUCT(indexTuple);

  if (!pg_class_ownercheck(index->indrelid, GetUserId()))
   continue;





  old_context = MemoryContextSwitchTo(cluster_context);

  rvtc = (RelToCluster *) palloc(sizeof(RelToCluster));
  rvtc->tableOid = index->indrelid;
  rvtc->indexOid = index->indexrelid;
  rvs = lappend(rvs, rvtc);

  MemoryContextSwitchTo(old_context);
 }
 table_endscan(scan);

 relation_close(indRelation, AccessShareLock);

 return rvs;
}
