
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int tgrelid; } ;
struct TYPE_17__ {int t_self; } ;
struct TYPE_16__ {TYPE_1__* rd_rel; } ;
struct TYPE_15__ {scalar_t__ relkind; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_2__* Relation ;
typedef int Oid ;
typedef TYPE_3__* HeapTuple ;
typedef TYPE_4__* Form_pg_trigger ;


 int AccessExclusiveLock ;
 int Anum_pg_trigger_oid ;
 int BTEqualStrategyNumber ;
 int CacheInvalidateRelcache (TYPE_2__*) ;
 int CatalogTupleDelete (TYPE_2__*,int *) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_3__*) ;
 int HeapTupleIsValid (TYPE_3__*) ;
 scalar_t__ IsSystemRelation (TYPE_2__*) ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ RELKIND_FOREIGN_TABLE ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RELKIND_VIEW ;
 int RelationGetRelationName (TYPE_2__*) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TriggerOidIndexId ;
 int TriggerRelationId ;
 int allowSystemTableMods ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int systable_beginscan (TYPE_2__*,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_3__* systable_getnext (int ) ;
 int table_close (TYPE_2__*,int ) ;
 TYPE_2__* table_open (int ,int ) ;

void
RemoveTriggerById(Oid trigOid)
{
 Relation tgrel;
 SysScanDesc tgscan;
 ScanKeyData skey[1];
 HeapTuple tup;
 Oid relid;
 Relation rel;

 tgrel = table_open(TriggerRelationId, RowExclusiveLock);




 ScanKeyInit(&skey[0],
    Anum_pg_trigger_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(trigOid));

 tgscan = systable_beginscan(tgrel, TriggerOidIndexId, 1,
        ((void*)0), 1, skey);

 tup = systable_getnext(tgscan);
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "could not find tuple for trigger %u", trigOid);




 relid = ((Form_pg_trigger) GETSTRUCT(tup))->tgrelid;

 rel = table_open(relid, AccessExclusiveLock);

 if (rel->rd_rel->relkind != RELKIND_RELATION &&
  rel->rd_rel->relkind != RELKIND_VIEW &&
  rel->rd_rel->relkind != RELKIND_FOREIGN_TABLE &&
  rel->rd_rel->relkind != RELKIND_PARTITIONED_TABLE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is not a table, view, or foreign table",
      RelationGetRelationName(rel))));

 if (!allowSystemTableMods && IsSystemRelation(rel))
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied: \"%s\" is a system catalog",
      RelationGetRelationName(rel))));




 CatalogTupleDelete(tgrel, &tup->t_self);

 systable_endscan(tgscan);
 table_close(tgrel, RowExclusiveLock);
 CacheInvalidateRelcache(rel);


 table_close(rel, NoLock);
}
