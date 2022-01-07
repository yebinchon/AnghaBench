
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SysScanDesc ;
typedef int Snapshot ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int GucSource ;
typedef int Datum ;
typedef int ArrayType ;


 int Anum_pg_db_role_setting_setconfig ;
 int Anum_pg_db_role_setting_setdatabase ;
 int Anum_pg_db_role_setting_setrole ;
 int BTEqualStrategyNumber ;
 int * DatumGetArrayTypeP (int ) ;
 int DbRoleSettingDatidRolidIndexId ;
 int F_OIDEQ ;
 int GUC_ACTION_SET ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int PGC_SUSET ;
 int ProcessGUCArray (int *,int ,int ,int ) ;
 int RelationGetDescr (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int systable_beginscan (int ,int ,int,int ,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;

void
ApplySetting(Snapshot snapshot, Oid databaseid, Oid roleid,
    Relation relsetting, GucSource source)
{
 SysScanDesc scan;
 ScanKeyData keys[2];
 HeapTuple tup;

 ScanKeyInit(&keys[0],
    Anum_pg_db_role_setting_setdatabase,
    BTEqualStrategyNumber,
    F_OIDEQ,
    ObjectIdGetDatum(databaseid));
 ScanKeyInit(&keys[1],
    Anum_pg_db_role_setting_setrole,
    BTEqualStrategyNumber,
    F_OIDEQ,
    ObjectIdGetDatum(roleid));

 scan = systable_beginscan(relsetting, DbRoleSettingDatidRolidIndexId, 1,
         snapshot, 2, keys);
 while (HeapTupleIsValid(tup = systable_getnext(scan)))
 {
  bool isnull;
  Datum datum;

  datum = heap_getattr(tup, Anum_pg_db_role_setting_setconfig,
        RelationGetDescr(relsetting), &isnull);
  if (!isnull)
  {
   ArrayType *a = DatumGetArrayTypeP(datum);






   ProcessGUCArray(a, PGC_SUSET, source, GUC_ACTION_SET);
  }
 }

 systable_endscan(scan);
}
