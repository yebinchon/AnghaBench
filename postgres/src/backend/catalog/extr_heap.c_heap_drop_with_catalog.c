
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ relispartition; } ;
struct TYPE_19__ {int t_self; } ;
struct TYPE_18__ {TYPE_1__* rd_rel; } ;
struct TYPE_17__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef scalar_t__ Oid ;
typedef TYPE_3__* HeapTuple ;
typedef TYPE_4__* Form_pg_class ;


 int AccessExclusiveLock ;
 int CacheInvalidateRelcacheByRelid (scalar_t__) ;
 int CatalogTupleDelete (TYPE_2__*,int *) ;
 int CheckTableForSerializableConflictIn (TYPE_2__*) ;
 int CheckTableNotInUse (TYPE_2__*,char*) ;
 int DeleteAttributeTuples (scalar_t__) ;
 int DeleteRelationTuple (scalar_t__) ;
 int ERROR ;
 int FOREIGNTABLEREL ;
 int ForeignTableRelationId ;
 scalar_t__ GETSTRUCT (TYPE_3__*) ;
 int HeapTupleIsValid (TYPE_3__*) ;
 scalar_t__ InvalidOid ;
 int LockRelationOid (scalar_t__,int ) ;
 int NoLock ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (scalar_t__) ;
 scalar_t__ RELKIND_COMPOSITE_TYPE ;
 scalar_t__ RELKIND_FOREIGN_TABLE ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_VIEW ;
 int RELOID ;
 int RelationDropStorage (TYPE_2__*) ;
 int RelationForgetRelation (scalar_t__) ;
 int RelationRemoveInheritance (scalar_t__) ;
 int ReleaseSysCache (TYPE_3__*) ;
 int RemovePartitionKeyByRelId (scalar_t__) ;
 int RemoveStatistics (scalar_t__,int ) ;
 int RemoveSubscriptionRel (scalar_t__,scalar_t__) ;
 int RowExclusiveLock ;
 TYPE_3__* SearchSysCache1 (int ,int ) ;
 int elog (int ,char*,scalar_t__) ;
 scalar_t__ get_default_partition_oid (scalar_t__) ;
 scalar_t__ get_partition_parent (scalar_t__) ;
 int relation_close (TYPE_2__*,int ) ;
 TYPE_2__* relation_open (scalar_t__,int ) ;
 int remove_on_commit_action (scalar_t__) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;
 int update_default_partition_oid (scalar_t__,scalar_t__) ;

void
heap_drop_with_catalog(Oid relid)
{
 Relation rel;
 HeapTuple tuple;
 Oid parentOid = InvalidOid,
    defaultPartOid = InvalidOid;
 tuple = SearchSysCache1(RELOID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "cache lookup failed for relation %u", relid);
 if (((Form_pg_class) GETSTRUCT(tuple))->relispartition)
 {
  parentOid = get_partition_parent(relid);
  LockRelationOid(parentOid, AccessExclusiveLock);





  defaultPartOid = get_default_partition_oid(parentOid);
  if (OidIsValid(defaultPartOid) && relid != defaultPartOid)
   LockRelationOid(defaultPartOid, AccessExclusiveLock);
 }

 ReleaseSysCache(tuple);




 rel = relation_open(relid, AccessExclusiveLock);






 CheckTableNotInUse(rel, "DROP TABLE");







 CheckTableForSerializableConflictIn(rel);




 if (rel->rd_rel->relkind == RELKIND_FOREIGN_TABLE)
 {
  Relation rel;
  HeapTuple tuple;

  rel = table_open(ForeignTableRelationId, RowExclusiveLock);

  tuple = SearchSysCache1(FOREIGNTABLEREL, ObjectIdGetDatum(relid));
  if (!HeapTupleIsValid(tuple))
   elog(ERROR, "cache lookup failed for foreign table %u", relid);

  CatalogTupleDelete(rel, &tuple->t_self);

  ReleaseSysCache(tuple);
  table_close(rel, RowExclusiveLock);
 }




 if (rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
  RemovePartitionKeyByRelId(relid);





 if (relid == defaultPartOid)
  update_default_partition_oid(parentOid, InvalidOid);




 if (rel->rd_rel->relkind != RELKIND_VIEW &&
  rel->rd_rel->relkind != RELKIND_COMPOSITE_TYPE &&
  rel->rd_rel->relkind != RELKIND_FOREIGN_TABLE &&
  rel->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
 {
  RelationDropStorage(rel);
 }






 relation_close(rel, NoLock);




 RemoveSubscriptionRel(InvalidOid, relid);




 remove_on_commit_action(relid);
 RelationForgetRelation(relid);




 RelationRemoveInheritance(relid);




 RemoveStatistics(relid, 0);




 DeleteAttributeTuples(relid);




 DeleteRelationTuple(relid);

 if (OidIsValid(parentOid))
 {





  if (OidIsValid(defaultPartOid) && relid != defaultPartOid)
   CacheInvalidateRelcacheByRelid(defaultPartOid);





  CacheInvalidateRelcacheByRelid(parentOid);

 }
}
