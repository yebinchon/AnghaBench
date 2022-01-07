
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
typedef TYPE_1__* Form_pg_trigger ;


 int AccessShareLock ;
 int Anum_pg_trigger_tgname ;
 int Anum_pg_trigger_tgrelid ;
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
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TriggerRelationId ;
 int TriggerRelidNameIndexId ;
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
get_trigger_oid(Oid relid, const char *trigname, bool missing_ok)
{
 Relation tgrel;
 ScanKeyData skey[2];
 SysScanDesc tgscan;
 HeapTuple tup;
 Oid oid;




 tgrel = table_open(TriggerRelationId, AccessShareLock);

 ScanKeyInit(&skey[0],
    Anum_pg_trigger_tgrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relid));
 ScanKeyInit(&skey[1],
    Anum_pg_trigger_tgname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(trigname));

 tgscan = systable_beginscan(tgrel, TriggerRelidNameIndexId, 1,
        ((void*)0), 2, skey);

 tup = systable_getnext(tgscan);

 if (!HeapTupleIsValid(tup))
 {
  if (!missing_ok)
   ereport(ERROR,
     (errcode(ERRCODE_UNDEFINED_OBJECT),
      errmsg("trigger \"%s\" for table \"%s\" does not exist",
       trigname, get_rel_name(relid))));
  oid = InvalidOid;
 }
 else
 {
  oid = ((Form_pg_trigger) GETSTRUCT(tup))->oid;
 }

 systable_endscan(tgscan);
 table_close(tgrel, AccessShareLock);
 return oid;
}
