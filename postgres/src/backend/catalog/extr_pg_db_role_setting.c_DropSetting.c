
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TableScanDesc ;
struct TYPE_4__ {int t_self; } ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int Anum_pg_db_role_setting_setdatabase ;
 int Anum_pg_db_role_setting_setrole ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int DbRoleSettingRelationId ;
 int F_OIDEQ ;
 int ForwardScanDirection ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 TYPE_1__* heap_getnext (int ,int ) ;
 int table_beginscan_catalog (int ,int,int *) ;
 int table_close (int ,int ) ;
 int table_endscan (int ) ;
 int table_open (int ,int ) ;

void
DropSetting(Oid databaseid, Oid roleid)
{
 Relation relsetting;
 TableScanDesc scan;
 ScanKeyData keys[2];
 HeapTuple tup;
 int numkeys = 0;

 relsetting = table_open(DbRoleSettingRelationId, RowExclusiveLock);

 if (OidIsValid(databaseid))
 {
  ScanKeyInit(&keys[numkeys],
     Anum_pg_db_role_setting_setdatabase,
     BTEqualStrategyNumber,
     F_OIDEQ,
     ObjectIdGetDatum(databaseid));
  numkeys++;
 }
 if (OidIsValid(roleid))
 {
  ScanKeyInit(&keys[numkeys],
     Anum_pg_db_role_setting_setrole,
     BTEqualStrategyNumber,
     F_OIDEQ,
     ObjectIdGetDatum(roleid));
  numkeys++;
 }

 scan = table_beginscan_catalog(relsetting, numkeys, keys);
 while (HeapTupleIsValid(tup = heap_getnext(scan, ForwardScanDirection)))
 {
  CatalogTupleDelete(relsetting, &tup->t_self);
 }
 table_endscan(scan);

 table_close(relsetting, RowExclusiveLock);
}
