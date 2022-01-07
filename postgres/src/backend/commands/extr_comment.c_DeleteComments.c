
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_3__ {int t_self; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef TYPE_1__* HeapTuple ;


 int Anum_pg_description_classoid ;
 int Anum_pg_description_objoid ;
 int Anum_pg_description_objsubid ;
 int BTEqualStrategyNumber ;
 int CatalogTupleDelete (int ,int *) ;
 int DescriptionObjIndexId ;
 int DescriptionRelationId ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 int Int32GetDatum (scalar_t__) ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 TYPE_1__* systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
DeleteComments(Oid oid, Oid classoid, int32 subid)
{
 Relation description;
 ScanKeyData skey[3];
 int nkeys;
 SysScanDesc sd;
 HeapTuple oldtuple;



 ScanKeyInit(&skey[0],
    Anum_pg_description_objoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(oid));
 ScanKeyInit(&skey[1],
    Anum_pg_description_classoid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(classoid));

 if (subid != 0)
 {
  ScanKeyInit(&skey[2],
     Anum_pg_description_objsubid,
     BTEqualStrategyNumber, F_INT4EQ,
     Int32GetDatum(subid));
  nkeys = 3;
 }
 else
  nkeys = 2;

 description = table_open(DescriptionRelationId, RowExclusiveLock);

 sd = systable_beginscan(description, DescriptionObjIndexId, 1,
       ((void*)0), nkeys, skey);

 while ((oldtuple = systable_getnext(sd)) != ((void*)0))
  CatalogTupleDelete(description, &oldtuple->t_self);



 systable_endscan(sd);
 table_close(description, RowExclusiveLock);
}
