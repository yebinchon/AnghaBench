
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int Anum_pg_shdescription_classoid ;
 int Anum_pg_shdescription_objoid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int F_OIDEQ ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int SharedDescriptionObjIndexId ;
 int SharedDescriptionRelationId ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
DeleteSharedComments(Oid oid, Oid classoid)
{
 Relation shdescription;
 ScanKeyData skey[2];
 SysScanDesc sd;
 HeapTuple oldtuple;



 ScanKeyInit(&skey[0],
    Anum_pg_shdescription_objoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(oid));
 ScanKeyInit(&skey[1],
    Anum_pg_shdescription_classoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(classoid));

 shdescription = table_open(SharedDescriptionRelationId, RowExclusiveLock);

 sd = systable_beginscan(shdescription, SharedDescriptionObjIndexId, 1,
       ((void*)0), 2, skey);

 while ((oldtuple = systable_getnext(sd)) != ((void*)0))
  CatalogTupleDelete(shdescription, &oldtuple->t_self);



 systable_endscan(sd);
 table_close(shdescription, RowExclusiveLock);
}
