
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int polname; int oid; } ;
struct TYPE_12__ {int t_self; } ;
struct TYPE_11__ {int newname; int subname; int relation; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef TYPE_1__ RenameStmt ;
typedef int Relation ;
typedef int Oid ;
typedef int ObjectAddress ;
typedef TYPE_2__* HeapTuple ;
typedef TYPE_3__* Form_pg_policy ;


 int AccessExclusiveLock ;
 int Anum_pg_policy_polname ;
 int Anum_pg_policy_polrelid ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (int ) ;
 int CacheInvalidateRelcache (int ) ;
 int CatalogTupleUpdate (int ,int *,TYPE_2__*) ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int F_NAMEEQ ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (TYPE_2__*) ;
 scalar_t__ HeapTupleIsValid (TYPE_2__*) ;
 int InvokeObjectPostAlterHook (int ,int ,int ) ;
 int NoLock ;
 int ObjectAddressSet (int ,int ,int ) ;
 int ObjectIdGetDatum (int ) ;
 int PolicyPolrelidPolnameIndexId ;
 int PolicyRelationId ;
 int RangeVarCallbackForPolicy ;
 int RangeVarGetRelidExtended (int ,int ,int ,int ,void*) ;
 int RelationGetRelationName (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,int ) ;
 TYPE_2__* heap_copytuple (TYPE_2__*) ;
 int namestrcpy (int *,int ) ;
 int relation_close (int ,int ) ;
 int relation_open (int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_2__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

ObjectAddress
rename_policy(RenameStmt *stmt)
{
 Relation pg_policy_rel;
 Relation target_table;
 Oid table_id;
 Oid opoloid;
 ScanKeyData skey[2];
 SysScanDesc sscan;
 HeapTuple policy_tuple;
 ObjectAddress address;


 table_id = RangeVarGetRelidExtended(stmt->relation, AccessExclusiveLock,
          0,
          RangeVarCallbackForPolicy,
          (void *) stmt);

 target_table = relation_open(table_id, NoLock);

 pg_policy_rel = table_open(PolicyRelationId, RowExclusiveLock);




 ScanKeyInit(&skey[0],
    Anum_pg_policy_polrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(table_id));


 ScanKeyInit(&skey[1],
    Anum_pg_policy_polname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(stmt->newname));

 sscan = systable_beginscan(pg_policy_rel,
          PolicyPolrelidPolnameIndexId, 1, ((void*)0), 2,
          skey);

 if (HeapTupleIsValid(systable_getnext(sscan)))
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("policy \"%s\" for table \"%s\" already exists",
      stmt->newname, RelationGetRelationName(target_table))));

 systable_endscan(sscan);



 ScanKeyInit(&skey[0],
    Anum_pg_policy_polrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(table_id));


 ScanKeyInit(&skey[1],
    Anum_pg_policy_polname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(stmt->subname));

 sscan = systable_beginscan(pg_policy_rel,
          PolicyPolrelidPolnameIndexId, 1, ((void*)0), 2,
          skey);

 policy_tuple = systable_getnext(sscan);


 if (!HeapTupleIsValid(policy_tuple))
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("policy \"%s\" for table \"%s\" does not exist",
      stmt->subname, RelationGetRelationName(target_table))));

 opoloid = ((Form_pg_policy) GETSTRUCT(policy_tuple))->oid;

 policy_tuple = heap_copytuple(policy_tuple);

 namestrcpy(&((Form_pg_policy) GETSTRUCT(policy_tuple))->polname,
      stmt->newname);

 CatalogTupleUpdate(pg_policy_rel, &policy_tuple->t_self, policy_tuple);

 InvokeObjectPostAlterHook(PolicyRelationId, opoloid, 0);

 ObjectAddressSet(address, PolicyRelationId, opoloid);






 CacheInvalidateRelcache(target_table);


 systable_endscan(sscan);
 table_close(pg_policy_rel, RowExclusiveLock);
 relation_close(target_table, NoLock);

 return address;
}
