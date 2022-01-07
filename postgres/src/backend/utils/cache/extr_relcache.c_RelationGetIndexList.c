
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {void* indexrelid; scalar_t__ indisreplident; scalar_t__ indisprimary; int indimmediate; int indisunique; int indisvalid; int indislive; } ;
struct TYPE_10__ {int rd_indexvalid; void* rd_replidindex; void* rd_pkindex; int * rd_indexlist; TYPE_1__* rd_rel; } ;
struct TYPE_9__ {char relreplident; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_2__* Relation ;
typedef void* Oid ;
typedef int MemoryContext ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_index ;


 int AccessShareLock ;
 int Anum_pg_index_indpred ;
 int Anum_pg_index_indrelid ;
 int BTEqualStrategyNumber ;
 int CacheMemoryContext ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int IndexIndrelidIndexId ;
 int IndexRelationId ;
 void* InvalidOid ;
 int MemoryContextSwitchTo (int ) ;
 int * NIL ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (void*) ;
 char REPLICA_IDENTITY_DEFAULT ;
 char REPLICA_IDENTITY_INDEX ;
 int RelationGetRelid (TYPE_2__*) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int heap_attisnull (int ,int ,int *) ;
 int * lappend_oid (int *,void*) ;
 int * list_copy (int *) ;
 int list_free (int *) ;
 int list_oid_cmp ;
 int list_sort (int *,int ) ;
 int systable_beginscan (TYPE_2__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

List *
RelationGetIndexList(Relation relation)
{
 Relation indrel;
 SysScanDesc indscan;
 ScanKeyData skey;
 HeapTuple htup;
 List *result;
 List *oldlist;
 char replident = relation->rd_rel->relreplident;
 Oid pkeyIndex = InvalidOid;
 Oid candidateIndex = InvalidOid;
 MemoryContext oldcxt;


 if (relation->rd_indexvalid)
  return list_copy(relation->rd_indexlist);







 result = NIL;


 ScanKeyInit(&skey,
    Anum_pg_index_indrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(relation)));

 indrel = table_open(IndexRelationId, AccessShareLock);
 indscan = systable_beginscan(indrel, IndexIndrelidIndexId, 1,
         ((void*)0), 1, &skey);

 while (HeapTupleIsValid(htup = systable_getnext(indscan)))
 {
  Form_pg_index index = (Form_pg_index) GETSTRUCT(htup);







  if (!index->indislive)
   continue;


  result = lappend_oid(result, index->indexrelid);






  if (!index->indisvalid || !index->indisunique ||
   !index->indimmediate ||
   !heap_attisnull(htup, Anum_pg_index_indpred, ((void*)0)))
   continue;


  if (index->indisprimary)
   pkeyIndex = index->indexrelid;


  if (index->indisreplident)
   candidateIndex = index->indexrelid;
 }

 systable_endscan(indscan);

 table_close(indrel, AccessShareLock);


 list_sort(result, list_oid_cmp);


 oldcxt = MemoryContextSwitchTo(CacheMemoryContext);
 oldlist = relation->rd_indexlist;
 relation->rd_indexlist = list_copy(result);
 relation->rd_pkindex = pkeyIndex;
 if (replident == REPLICA_IDENTITY_DEFAULT && OidIsValid(pkeyIndex))
  relation->rd_replidindex = pkeyIndex;
 else if (replident == REPLICA_IDENTITY_INDEX && OidIsValid(candidateIndex))
  relation->rd_replidindex = candidateIndex;
 else
  relation->rd_replidindex = InvalidOid;
 relation->rd_indexvalid = 1;
 MemoryContextSwitchTo(oldcxt);


 list_free(oldlist);

 return result;
}
