
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;


 int AccessShareLock ;
 int Anum_pg_constraint_conname ;
 int Anum_pg_constraint_connamespace ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int ConstraintNameNspIndexId ;
 int ConstraintRelationId ;
 int F_NAMEEQ ;
 int F_OIDEQ ;
 int HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

bool
ConstraintNameExists(const char *conname, Oid namespaceid)
{
 bool found;
 Relation conDesc;
 SysScanDesc conscan;
 ScanKeyData skey[2];

 conDesc = table_open(ConstraintRelationId, AccessShareLock);

 ScanKeyInit(&skey[0],
    Anum_pg_constraint_conname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(conname));

 ScanKeyInit(&skey[1],
    Anum_pg_constraint_connamespace,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(namespaceid));

 conscan = systable_beginscan(conDesc, ConstraintNameNspIndexId, 1,
         ((void*)0), 2, skey);

 found = (HeapTupleIsValid(systable_getnext(conscan)));

 systable_endscan(conscan);
 table_close(conDesc, AccessShareLock);

 return found;
}
