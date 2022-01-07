
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ classid; scalar_t__ objsubid; scalar_t__ refobjsubid; char deptype; int objid; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int List ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_depend ;
typedef scalar_t__ AttrNumber ;


 int AccessShareLock ;
 int Anum_pg_depend_refclassid ;
 int Anum_pg_depend_refobjid ;
 int Anum_pg_depend_refobjsubid ;
 int BTEqualStrategyNumber ;
 char DEPENDENCY_AUTO ;
 char DEPENDENCY_INTERNAL ;
 int DependReferenceIndexId ;
 int DependRelationId ;
 int F_INT4EQ ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int Int32GetDatum (scalar_t__) ;
 int * NIL ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ RELKIND_SEQUENCE ;
 scalar_t__ RelationRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 scalar_t__ get_rel_relkind (int ) ;
 int * lappend_oid (int *,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

__attribute__((used)) static List *
getOwnedSequences_internal(Oid relid, AttrNumber attnum, char deptype)
{
 List *result = NIL;
 Relation depRel;
 ScanKeyData key[3];
 SysScanDesc scan;
 HeapTuple tup;

 depRel = table_open(DependRelationId, AccessShareLock);

 ScanKeyInit(&key[0],
    Anum_pg_depend_refclassid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(RelationRelationId));
 ScanKeyInit(&key[1],
    Anum_pg_depend_refobjid,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(relid));
 if (attnum)
  ScanKeyInit(&key[2],
     Anum_pg_depend_refobjsubid,
     BTEqualStrategyNumber, F_INT4EQ,
     Int32GetDatum(attnum));

 scan = systable_beginscan(depRel, DependReferenceIndexId, 1,
         ((void*)0), attnum ? 3 : 2, key);

 while (HeapTupleIsValid(tup = systable_getnext(scan)))
 {
  Form_pg_depend deprec = (Form_pg_depend) GETSTRUCT(tup);






  if (deprec->classid == RelationRelationId &&
   deprec->objsubid == 0 &&
   deprec->refobjsubid != 0 &&
   (deprec->deptype == DEPENDENCY_AUTO || deprec->deptype == DEPENDENCY_INTERNAL) &&
   get_rel_relkind(deprec->objid) == RELKIND_SEQUENCE)
  {
   if (!deptype || deprec->deptype == deptype)
    result = lappend_oid(result, deprec->objid);
  }
 }

 systable_endscan(scan);

 table_close(depRel, AccessShareLock);

 return result;
}
