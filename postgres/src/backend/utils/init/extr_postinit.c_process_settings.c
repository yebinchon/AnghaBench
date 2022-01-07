
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Snapshot ;
typedef int Relation ;
typedef int Oid ;


 int AccessShareLock ;
 int ApplySetting (int ,int ,int ,int ,int ) ;
 int DbRoleSettingRelationId ;
 int GetCatalogSnapshot (int ) ;
 int InvalidOid ;
 int IsUnderPostmaster ;
 int PGC_S_DATABASE ;
 int PGC_S_DATABASE_USER ;
 int PGC_S_GLOBAL ;
 int PGC_S_USER ;
 int RegisterSnapshot (int ) ;
 int UnregisterSnapshot (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static void
process_settings(Oid databaseid, Oid roleid)
{
 Relation relsetting;
 Snapshot snapshot;

 if (!IsUnderPostmaster)
  return;

 relsetting = table_open(DbRoleSettingRelationId, AccessShareLock);


 snapshot = RegisterSnapshot(GetCatalogSnapshot(DbRoleSettingRelationId));


 ApplySetting(snapshot, databaseid, roleid, relsetting, PGC_S_DATABASE_USER);
 ApplySetting(snapshot, InvalidOid, roleid, relsetting, PGC_S_USER);
 ApplySetting(snapshot, databaseid, InvalidOid, relsetting, PGC_S_DATABASE);
 ApplySetting(snapshot, InvalidOid, InvalidOid, relsetting, PGC_S_GLOBAL);

 UnregisterSnapshot(snapshot);
 table_close(relsetting, AccessShareLock);
}
