
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int HeapTuple ;


 int AccessShareLock ;
 int Anum_pg_policy_polrelid ;
 int BTEqualStrategyNumber ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PolicyPolrelidPolnameIndexId ;
 int PolicyRelationId ;
 int RelationGetRelid (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

bool
relation_has_policies(Relation rel)
{
 Relation catalog;
 ScanKeyData skey;
 SysScanDesc sscan;
 HeapTuple policy_tuple;
 bool ret = 0;

 catalog = table_open(PolicyRelationId, AccessShareLock);
 ScanKeyInit(&skey,
    Anum_pg_policy_polrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationGetRelid(rel)));
 sscan = systable_beginscan(catalog, PolicyPolrelidPolnameIndexId, 1,
          ((void*)0), 1, &skey);
 policy_tuple = systable_getnext(sscan);
 if (HeapTupleIsValid(policy_tuple))
  ret = 1;

 systable_endscan(sscan);
 table_close(catalog, AccessShareLock);

 return ret;
}
