
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ev_class; } ;
struct TYPE_6__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;
typedef TYPE_2__* Form_pg_rewrite ;


 int AccessExclusiveLock ;
 int Anum_pg_rewrite_oid ;
 int BTEqualStrategyNumber ;
 int CacheInvalidateRelcache (int ) ;
 int CatalogTupleDelete (int ,int *) ;
 int ERROR ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_1__*) ;
 int HeapTupleIsValid (TYPE_1__*) ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int RewriteOidIndexId ;
 int RewriteRelationId ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int elog (int ,char*,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
RemoveRewriteRuleById(Oid ruleOid)
{
 Relation RewriteRelation;
 ScanKeyData skey[1];
 SysScanDesc rcscan;
 Relation event_relation;
 HeapTuple tuple;
 Oid eventRelationOid;




 RewriteRelation = table_open(RewriteRelationId, RowExclusiveLock);




 ScanKeyInit(&skey[0],
    Anum_pg_rewrite_oid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(ruleOid));

 rcscan = systable_beginscan(RewriteRelation, RewriteOidIndexId, 1,
        ((void*)0), 1, skey);

 tuple = systable_getnext(rcscan);

 if (!HeapTupleIsValid(tuple))
  elog(ERROR, "could not find tuple for rule %u", ruleOid);






 eventRelationOid = ((Form_pg_rewrite) GETSTRUCT(tuple))->ev_class;
 event_relation = table_open(eventRelationOid, AccessExclusiveLock);




 CatalogTupleDelete(RewriteRelation, &tuple->t_self);

 systable_endscan(rcscan);

 table_close(RewriteRelation, RowExclusiveLock);





 CacheInvalidateRelcache(event_relation);


 table_close(event_relation, NoLock);
}
