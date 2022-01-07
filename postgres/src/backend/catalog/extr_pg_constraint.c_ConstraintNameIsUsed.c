
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef scalar_t__ ConstraintCategory ;


 int AccessShareLock ;
 int Anum_pg_constraint_conname ;
 int Anum_pg_constraint_conrelid ;
 int Anum_pg_constraint_contypid ;
 int BTEqualStrategyNumber ;
 scalar_t__ CONSTRAINT_DOMAIN ;
 scalar_t__ CONSTRAINT_RELATION ;
 int CStringGetDatum (char const*) ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int F_NAMEEQ ;
 int F_OIDEQ ;
 int HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

bool
ConstraintNameIsUsed(ConstraintCategory conCat, Oid objId,
      const char *conname)
{
 bool found;
 Relation conDesc;
 SysScanDesc conscan;
 ScanKeyData skey[3];

 conDesc = table_open(ConstraintRelationId, AccessShareLock);

 ScanKeyInit(&skey[0],
    Anum_pg_constraint_conrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum((conCat == CONSTRAINT_RELATION)
         ? objId : InvalidOid));
 ScanKeyInit(&skey[1],
    Anum_pg_constraint_contypid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum((conCat == CONSTRAINT_DOMAIN)
         ? objId : InvalidOid));
 ScanKeyInit(&skey[2],
    Anum_pg_constraint_conname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(conname));

 conscan = systable_beginscan(conDesc, ConstraintRelidTypidNameIndexId,
         1, ((void*)0), 3, skey);


 found = (HeapTupleIsValid(systable_getnext(conscan)));

 systable_endscan(conscan);
 table_close(conDesc, AccessShareLock);

 return found;
}
