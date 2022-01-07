
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int Anum_pg_shseclabel_classoid ;
 int Anum_pg_shseclabel_objoid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int F_OIDEQ ;
 scalar_t__ HeapTupleIsValid (TYPE_1__*) ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SharedSecLabelObjectIndexId ;
 int SharedSecLabelRelationId ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
DeleteSharedSecurityLabel(Oid objectId, Oid classId)
{
 Relation pg_shseclabel;
 ScanKeyData skey[2];
 SysScanDesc scan;
 HeapTuple oldtup;

 ScanKeyInit(&skey[0],
    Anum_pg_shseclabel_objoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(objectId));
 ScanKeyInit(&skey[1],
    Anum_pg_shseclabel_classoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(classId));

 pg_shseclabel = table_open(SharedSecLabelRelationId, RowExclusiveLock);

 scan = systable_beginscan(pg_shseclabel, SharedSecLabelObjectIndexId, 1,
         ((void*)0), 2, skey);
 while (HeapTupleIsValid(oldtup = systable_getnext(scan)))
  CatalogTupleDelete(pg_shseclabel, &oldtup->t_self);
 systable_endscan(scan);

 table_close(pg_shseclabel, RowExclusiveLock);
}
