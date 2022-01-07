
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef void* int32 ;
typedef int float4 ;
typedef int TransactionId ;
struct TYPE_15__ {long relfilenode; long reltablespace; char relpersistence; long reltoastrelid; scalar_t__ relkind; void* relallvisible; int reltuples; void* relpages; int relminmxid; int relfrozenxid; int relisshared; int relname; } ;
struct TYPE_14__ {int t_self; } ;
struct TYPE_13__ {long objectId; scalar_t__ objectSubId; void* classId; } ;
typedef int Relation ;
typedef long Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int MultiXactId ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_class ;
typedef int CatalogIndexState ;


 int AccessExclusiveLock ;
 int Assert (int) ;
 int CacheInvalidateRelcacheByTuple (TYPE_2__*) ;
 int CatalogCloseIndexes (int ) ;
 int CatalogOpenIndexes (int ) ;
 int CatalogTupleUpdateWithInfo (int ,int *,TYPE_2__*,int ) ;
 int DEPENDENCY_INTERNAL ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 int HeapTupleIsValid (TYPE_2__*) ;
 int InvalidMultiXactId ;
 int InvalidOid ;
 int InvalidTransactionId ;
 int InvokeObjectPostAlterHookArg (void*,long,int ,int ,int) ;
 scalar_t__ IsSystemClass (long,TYPE_3__*) ;
 long NameStr (int ) ;
 int ObjectIdGetDatum (long) ;
 scalar_t__ OidIsValid (long) ;
 scalar_t__ RELKIND_INDEX ;
 scalar_t__ RELKIND_TOASTVALUE ;
 int RELOID ;
 int RelationCloseSmgrByOid (long) ;
 long RelationMapOidToFilenode (long,int ) ;
 int RelationMapUpdateMap (long,long,int ,int) ;
 void* RelationRelationId ;
 int RowExclusiveLock ;
 TYPE_2__* SearchSysCacheCopy1 (int ,int ) ;
 scalar_t__ TransactionIdIsNormal (int ) ;
 int TransactionIdIsValid (int ) ;
 long deleteDependencyRecordsFor (void*,long,int) ;
 int elog (int ,char*,...) ;
 int heap_freetuple (TYPE_2__*) ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;
 int table_close (int ,int ) ;
 int table_open (void*,int ) ;
 long toast_get_valid_index (long,int ) ;

__attribute__((used)) static void
swap_relation_files(Oid r1, Oid r2, bool target_is_pg_class,
     bool swap_toast_by_content,
     bool is_internal,
     TransactionId frozenXid,
     MultiXactId cutoffMulti,
     Oid *mapped_tables)
{
 Relation relRelation;
 HeapTuple reltup1,
    reltup2;
 Form_pg_class relform1,
    relform2;
 Oid relfilenode1,
    relfilenode2;
 Oid swaptemp;
 char swptmpchr;


 relRelation = table_open(RelationRelationId, RowExclusiveLock);

 reltup1 = SearchSysCacheCopy1(RELOID, ObjectIdGetDatum(r1));
 if (!HeapTupleIsValid(reltup1))
  elog(ERROR, "cache lookup failed for relation %u", r1);
 relform1 = (Form_pg_class) GETSTRUCT(reltup1);

 reltup2 = SearchSysCacheCopy1(RELOID, ObjectIdGetDatum(r2));
 if (!HeapTupleIsValid(reltup2))
  elog(ERROR, "cache lookup failed for relation %u", r2);
 relform2 = (Form_pg_class) GETSTRUCT(reltup2);

 relfilenode1 = relform1->relfilenode;
 relfilenode2 = relform2->relfilenode;

 if (OidIsValid(relfilenode1) && OidIsValid(relfilenode2))
 {




  Assert(!target_is_pg_class);

  swaptemp = relform1->relfilenode;
  relform1->relfilenode = relform2->relfilenode;
  relform2->relfilenode = swaptemp;

  swaptemp = relform1->reltablespace;
  relform1->reltablespace = relform2->reltablespace;
  relform2->reltablespace = swaptemp;

  swptmpchr = relform1->relpersistence;
  relform1->relpersistence = relform2->relpersistence;
  relform2->relpersistence = swptmpchr;


  if (!swap_toast_by_content)
  {
   swaptemp = relform1->reltoastrelid;
   relform1->reltoastrelid = relform2->reltoastrelid;
   relform2->reltoastrelid = swaptemp;
  }
 }
 else
 {




  if (OidIsValid(relfilenode1) || OidIsValid(relfilenode2))
   elog(ERROR, "cannot swap mapped relation \"%s\" with non-mapped relation",
     NameStr(relform1->relname));
  if (relform1->reltablespace != relform2->reltablespace)
   elog(ERROR, "cannot change tablespace of mapped relation \"%s\"",
     NameStr(relform1->relname));
  if (relform1->relpersistence != relform2->relpersistence)
   elog(ERROR, "cannot change persistence of mapped relation \"%s\"",
     NameStr(relform1->relname));
  if (!swap_toast_by_content &&
   (relform1->reltoastrelid || relform2->reltoastrelid))
   elog(ERROR, "cannot swap toast by links for mapped relation \"%s\"",
     NameStr(relform1->relname));




  relfilenode1 = RelationMapOidToFilenode(r1, relform1->relisshared);
  if (!OidIsValid(relfilenode1))
   elog(ERROR, "could not find relation mapping for relation \"%s\", OID %u",
     NameStr(relform1->relname), r1);
  relfilenode2 = RelationMapOidToFilenode(r2, relform2->relisshared);
  if (!OidIsValid(relfilenode2))
   elog(ERROR, "could not find relation mapping for relation \"%s\", OID %u",
     NameStr(relform2->relname), r2);





  RelationMapUpdateMap(r1, relfilenode2, relform1->relisshared, 0);
  RelationMapUpdateMap(r2, relfilenode1, relform2->relisshared, 0);


  *mapped_tables++ = r2;
 }
 if (relform1->relkind != RELKIND_INDEX)
 {
  Assert(!TransactionIdIsValid(frozenXid) ||
      TransactionIdIsNormal(frozenXid));
  relform1->relfrozenxid = frozenXid;
  relform1->relminmxid = cutoffMulti;
 }


 {
  int32 swap_pages;
  float4 swap_tuples;
  int32 swap_allvisible;

  swap_pages = relform1->relpages;
  relform1->relpages = relform2->relpages;
  relform2->relpages = swap_pages;

  swap_tuples = relform1->reltuples;
  relform1->reltuples = relform2->reltuples;
  relform2->reltuples = swap_tuples;

  swap_allvisible = relform1->relallvisible;
  relform1->relallvisible = relform2->relallvisible;
  relform2->relallvisible = swap_allvisible;
 }
 if (!target_is_pg_class)
 {
  CatalogIndexState indstate;

  indstate = CatalogOpenIndexes(relRelation);
  CatalogTupleUpdateWithInfo(relRelation, &reltup1->t_self, reltup1,
           indstate);
  CatalogTupleUpdateWithInfo(relRelation, &reltup2->t_self, reltup2,
           indstate);
  CatalogCloseIndexes(indstate);
 }
 else
 {

  CacheInvalidateRelcacheByTuple(reltup1);
  CacheInvalidateRelcacheByTuple(reltup2);
 }





 InvokeObjectPostAlterHookArg(RelationRelationId, r1, 0,
         InvalidOid, is_internal);
 InvokeObjectPostAlterHookArg(RelationRelationId, r2, 0,
         InvalidOid, 1);





 if (relform1->reltoastrelid || relform2->reltoastrelid)
 {
  if (swap_toast_by_content)
  {
   if (relform1->reltoastrelid && relform2->reltoastrelid)
   {

    swap_relation_files(relform1->reltoastrelid,
         relform2->reltoastrelid,
         target_is_pg_class,
         swap_toast_by_content,
         is_internal,
         frozenXid,
         cutoffMulti,
         mapped_tables);
   }
   else
   {

    elog(ERROR, "cannot swap toast files by content when there's only one");
   }
  }
  else
  {
   ObjectAddress baseobject,
      toastobject;
   long count;







   if (IsSystemClass(r1, relform1))
    elog(ERROR, "cannot swap toast files by links for system catalogs");


   if (relform1->reltoastrelid)
   {
    count = deleteDependencyRecordsFor(RelationRelationId,
               relform1->reltoastrelid,
               0);
    if (count != 1)
     elog(ERROR, "expected one dependency record for TOAST table, found %ld",
       count);
   }
   if (relform2->reltoastrelid)
   {
    count = deleteDependencyRecordsFor(RelationRelationId,
               relform2->reltoastrelid,
               0);
    if (count != 1)
     elog(ERROR, "expected one dependency record for TOAST table, found %ld",
       count);
   }


   baseobject.classId = RelationRelationId;
   baseobject.objectSubId = 0;
   toastobject.classId = RelationRelationId;
   toastobject.objectSubId = 0;

   if (relform1->reltoastrelid)
   {
    baseobject.objectId = r1;
    toastobject.objectId = relform1->reltoastrelid;
    recordDependencyOn(&toastobject, &baseobject,
           DEPENDENCY_INTERNAL);
   }

   if (relform2->reltoastrelid)
   {
    baseobject.objectId = r2;
    toastobject.objectId = relform2->reltoastrelid;
    recordDependencyOn(&toastobject, &baseobject,
           DEPENDENCY_INTERNAL);
   }
  }
 }






 if (swap_toast_by_content &&
  relform1->relkind == RELKIND_TOASTVALUE &&
  relform2->relkind == RELKIND_TOASTVALUE)
 {
  Oid toastIndex1,
     toastIndex2;


  toastIndex1 = toast_get_valid_index(r1,
           AccessExclusiveLock);
  toastIndex2 = toast_get_valid_index(r2,
           AccessExclusiveLock);

  swap_relation_files(toastIndex1,
       toastIndex2,
       target_is_pg_class,
       swap_toast_by_content,
       is_internal,
       InvalidTransactionId,
       InvalidMultiXactId,
       mapped_tables);
 }


 heap_freetuple(reltup1);
 heap_freetuple(reltup2);

 table_close(relRelation, RowExclusiveLock);
 RelationCloseSmgrByOid(r1);
 RelationCloseSmgrByOid(r2);
}
