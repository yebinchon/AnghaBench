
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int oid; } ;
struct TYPE_8__ {int rd_statvalid; int * rd_statlist; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_1__* Relation ;
typedef int Oid ;
typedef int MemoryContext ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_2__* Form_pg_statistic_ext ;


 int AccessShareLock ;
 int Anum_pg_statistic_ext_stxrelid ;
 int BTEqualStrategyNumber ;
 int CacheMemoryContext ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int * NIL ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetRelid (TYPE_1__*) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int StatisticExtRelationId ;
 int StatisticExtRelidIndexId ;
 int * lappend_oid (int *,int ) ;
 int * list_copy (int *) ;
 int list_free (int *) ;
 int list_oid_cmp ;
 int list_sort (int *,int ) ;
 int systable_beginscan (TYPE_1__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (TYPE_1__*,int ) ;
 TYPE_1__* table_open (int ,int ) ;

List *
RelationGetStatExtList(Relation relation)
{
 Relation indrel;
 SysScanDesc indscan;
 ScanKeyData skey;
 HeapTuple htup;
 List *result;
 List *oldlist;
 MemoryContext oldcxt;


 if (relation->rd_statvalid != 0)
  return list_copy(relation->rd_statlist);







 result = NIL;





 ScanKeyInit(&skey,
    Anum_pg_statistic_ext_stxrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(relation)));

 indrel = table_open(StatisticExtRelationId, AccessShareLock);
 indscan = systable_beginscan(indrel, StatisticExtRelidIndexId, 1,
         ((void*)0), 1, &skey);

 while (HeapTupleIsValid(htup = systable_getnext(indscan)))
 {
  Oid oid = ((Form_pg_statistic_ext) GETSTRUCT(htup))->oid;

  result = lappend_oid(result, oid);
 }

 systable_endscan(indscan);

 table_close(indrel, AccessShareLock);


 list_sort(result, list_oid_cmp);


 oldcxt = MemoryContextSwitchTo(CacheMemoryContext);
 oldlist = relation->rd_statlist;
 relation->rd_statlist = list_copy(result);

 relation->rd_statvalid = 1;
 MemoryContextSwitchTo(oldcxt);


 list_free(oldlist);

 return result;
}
