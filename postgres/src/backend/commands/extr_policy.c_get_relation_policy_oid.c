
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_policy ;


 int AccessShareLock ;
 int Anum_pg_policy_polname ;
 int Anum_pg_policy_polrelid ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int F_NAMEEQ ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int PolicyPolrelidPolnameIndexId ;
 int PolicyRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ) ;
 int get_rel_name (int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Oid
get_relation_policy_oid(Oid relid, const char *policy_name, bool missing_ok)
{
 Relation pg_policy_rel;
 ScanKeyData skey[2];
 SysScanDesc sscan;
 HeapTuple policy_tuple;
 Oid policy_oid;

 pg_policy_rel = table_open(PolicyRelationId, AccessShareLock);


 ScanKeyInit(&skey[0],
    Anum_pg_policy_polrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relid));


 ScanKeyInit(&skey[1],
    Anum_pg_policy_polname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(policy_name));

 sscan = systable_beginscan(pg_policy_rel,
          PolicyPolrelidPolnameIndexId, 1, ((void*)0), 2,
          skey);

 policy_tuple = systable_getnext(sscan);

 if (!HeapTupleIsValid(policy_tuple))
 {
  if (!missing_ok)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("policy \"%s\" for table \"%s\" does not exist",
       policy_name, get_rel_name(relid))));

  policy_oid = InvalidOid;
 }
 else
  policy_oid = ((Form_pg_policy) GETSTRUCT(policy_tuple))->oid;


 systable_endscan(sscan);
 table_close(pg_policy_rel, AccessShareLock);

 return policy_oid;
}
