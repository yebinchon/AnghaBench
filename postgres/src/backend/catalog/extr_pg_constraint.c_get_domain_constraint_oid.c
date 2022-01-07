
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_constraint ;


 int AccessShareLock ;
 int Anum_pg_constraint_conname ;
 int Anum_pg_constraint_conrelid ;
 int Anum_pg_constraint_contypid ;
 int BTEqualStrategyNumber ;
 int CStringGetDatum (char const*) ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int F_NAMEEQ ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int OidIsValid (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,int ) ;
 int format_type_be (int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Oid
get_domain_constraint_oid(Oid typid, const char *conname, bool missing_ok)
{
 Relation pg_constraint;
 HeapTuple tuple;
 SysScanDesc scan;
 ScanKeyData skey[3];
 Oid conOid = InvalidOid;

 pg_constraint = table_open(ConstraintRelationId, AccessShareLock);

 ScanKeyInit(&skey[0],
    Anum_pg_constraint_conrelid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(InvalidOid));
 ScanKeyInit(&skey[1],
    Anum_pg_constraint_contypid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(typid));
 ScanKeyInit(&skey[2],
    Anum_pg_constraint_conname,
    BTEqualStrategyNumber, F_NAMEEQ,
    CStringGetDatum(conname));

 scan = systable_beginscan(pg_constraint, ConstraintRelidTypidNameIndexId, 1,
         ((void*)0), 3, skey);


 if (HeapTupleIsValid(tuple = systable_getnext(scan)))
  conOid = ((Form_pg_constraint) GETSTRUCT(tuple))->oid;

 systable_endscan(scan);


 if (!OidIsValid(conOid) && !missing_ok)
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("constraint \"%s\" for domain %s does not exist",
      conname, format_type_be(typid))));

 table_close(pg_constraint, AccessShareLock);

 return conOid;
}
