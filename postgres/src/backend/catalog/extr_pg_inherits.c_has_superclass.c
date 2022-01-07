
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;


 int AccessShareLock ;
 int Anum_pg_inherits_inhrelid ;
 int BTEqualStrategyNumber ;
 int F_OIDEQ ;
 int HeapTupleIsValid (int ) ;
 int InheritsRelationId ;
 int InheritsRelidSeqnoIndexId ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

bool
has_superclass(Oid relationId)
{
 Relation catalog;
 SysScanDesc scan;
 ScanKeyData skey;
 bool result;

 catalog = table_open(InheritsRelationId, AccessShareLock);
 ScanKeyInit(&skey, Anum_pg_inherits_inhrelid, BTEqualStrategyNumber,
    F_OIDEQ, ObjectIdGetDatum(relationId));
 scan = systable_beginscan(catalog, InheritsRelidSeqnoIndexId, 1,
         ((void*)0), 1, &skey);
 result = HeapTupleIsValid(systable_getnext(scan));
 systable_endscan(scan);
 table_close(catalog, AccessShareLock);

 return result;
}
