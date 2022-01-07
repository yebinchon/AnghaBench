
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int t_self; } ;
struct TYPE_6__ {scalar_t__ objectSubId; int classId; int objectId; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef TYPE_1__ ObjectAddress ;
typedef TYPE_2__* HeapTuple ;


 int Anum_pg_seclabel_classoid ;
 int Anum_pg_seclabel_objoid ;
 int Anum_pg_seclabel_objsubid ;
 int Assert (int) ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int DeleteSharedSecurityLabel (int ,int ) ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (TYPE_2__*) ;
 int Int32GetDatum (scalar_t__) ;
 scalar_t__ IsSharedRelation (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SecLabelObjectIndexId ;
 int SecLabelRelationId ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_2__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
DeleteSecurityLabel(const ObjectAddress *object)
{
 Relation pg_seclabel;
 ScanKeyData skey[3];
 SysScanDesc scan;
 HeapTuple oldtup;
 int nkeys;


 if (IsSharedRelation(object->classId))
 {
  Assert(object->objectSubId == 0);
  DeleteSharedSecurityLabel(object->objectId, object->classId);
  return;
 }

 ScanKeyInit(&skey[0],
    Anum_pg_seclabel_objoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(object->objectId));
 ScanKeyInit(&skey[1],
    Anum_pg_seclabel_classoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(object->classId));
 if (object->objectSubId != 0)
 {
  ScanKeyInit(&skey[2],
     Anum_pg_seclabel_objsubid,
     BTEqualStrategyNumber, F_INT4EQ,
     Int32GetDatum(object->objectSubId));
  nkeys = 3;
 }
 else
  nkeys = 2;

 pg_seclabel = table_open(SecLabelRelationId, RowExclusiveLock);

 scan = systable_beginscan(pg_seclabel, SecLabelObjectIndexId, 1,
         ((void*)0), nkeys, skey);
 while (HeapTupleIsValid(oldtup = systable_getnext(scan)))
  CatalogTupleDelete(pg_seclabel, &oldtup->t_self);
 systable_endscan(scan);

 table_close(pg_seclabel, RowExclusiveLock);
}
