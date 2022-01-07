
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ opcintype; scalar_t__ oid; int opcdefault; } ;
typedef int TYPCATEGORY ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef scalar_t__ Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_opclass ;


 int AccessShareLock ;
 int Anum_pg_opclass_opcmethod ;
 int BTEqualStrategyNumber ;
 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 scalar_t__ InvalidOid ;
 scalar_t__ IsBinaryCoercible (scalar_t__,scalar_t__) ;
 scalar_t__ IsPreferredType (int ,scalar_t__) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int OpclassAmNameNspIndexId ;
 int OperatorClassRelationId ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TypeCategory (scalar_t__) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (scalar_t__) ;
 scalar_t__ getBaseType (scalar_t__) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

Oid
GetDefaultOpClass(Oid type_id, Oid am_id)
{
 Oid result = InvalidOid;
 int nexact = 0;
 int ncompatible = 0;
 int ncompatiblepreferred = 0;
 Relation rel;
 ScanKeyData skey[1];
 SysScanDesc scan;
 HeapTuple tup;
 TYPCATEGORY tcategory;


 type_id = getBaseType(type_id);

 tcategory = TypeCategory(type_id);
 rel = table_open(OperatorClassRelationId, AccessShareLock);

 ScanKeyInit(&skey[0],
    Anum_pg_opclass_opcmethod,
    BTEqualStrategyNumber, F_OIDEQ,
    ObjectIdGetDatum(am_id));

 scan = systable_beginscan(rel, OpclassAmNameNspIndexId, 1,
         ((void*)0), 1, skey);

 while (HeapTupleIsValid(tup = systable_getnext(scan)))
 {
  Form_pg_opclass opclass = (Form_pg_opclass) GETSTRUCT(tup);


  if (!opclass->opcdefault)
   continue;
  if (opclass->opcintype == type_id)
  {
   nexact++;
   result = opclass->oid;
  }
  else if (nexact == 0 &&
     IsBinaryCoercible(type_id, opclass->opcintype))
  {
   if (IsPreferredType(tcategory, opclass->opcintype))
   {
    ncompatiblepreferred++;
    result = opclass->oid;
   }
   else if (ncompatiblepreferred == 0)
   {
    ncompatible++;
    result = opclass->oid;
   }
  }
 }

 systable_endscan(scan);

 table_close(rel, AccessShareLock);


 if (nexact > 1)
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("there are multiple default operator classes for data type %s",
      format_type_be(type_id))));

 if (nexact == 1 ||
  ncompatiblepreferred == 1 ||
  (ncompatiblepreferred == 0 && ncompatible == 1))
  return result;

 return InvalidOid;
}
