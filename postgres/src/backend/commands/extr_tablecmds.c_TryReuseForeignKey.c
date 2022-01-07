
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ contype; int old_conpfeqop; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef int Datum ;
typedef TYPE_1__ Constraint ;
typedef int ArrayType ;


 scalar_t__ ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 int Anum_pg_constraint_conpfeqop ;
 int Assert (int) ;
 int CONSTROID ;
 scalar_t__ CONSTR_FOREIGN ;
 int * DatumGetArrayTypeP (int ) ;
 int ERROR ;
 int HeapTupleIsValid (int ) ;
 int NIL ;
 scalar_t__ OIDOID ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SysCacheGetAttr (int ,int ,int ,int*) ;
 int elog (int ,char*,...) ;
 int lappend_oid (int ,int ) ;

__attribute__((used)) static void
TryReuseForeignKey(Oid oldId, Constraint *con)
{
 HeapTuple tup;
 Datum adatum;
 bool isNull;
 ArrayType *arr;
 Oid *rawarr;
 int numkeys;
 int i;

 Assert(con->contype == CONSTR_FOREIGN);
 Assert(con->old_conpfeqop == NIL);

 tup = SearchSysCache1(CONSTROID, ObjectIdGetDatum(oldId));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for constraint %u", oldId);

 adatum = SysCacheGetAttr(CONSTROID, tup,
        Anum_pg_constraint_conpfeqop, &isNull);
 if (isNull)
  elog(ERROR, "null conpfeqop for constraint %u", oldId);
 arr = DatumGetArrayTypeP(adatum);
 numkeys = ARR_DIMS(arr)[0];

 if (ARR_NDIM(arr) != 1 ||
  ARR_HASNULL(arr) ||
  ARR_ELEMTYPE(arr) != OIDOID)
  elog(ERROR, "conpfeqop is not a 1-D Oid array");
 rawarr = (Oid *) ARR_DATA_PTR(arr);


 for (i = 0; i < numkeys; i++)
  con->old_conpfeqop = lappend_oid(con->old_conpfeqop, rawarr[i]);

 ReleaseSysCache(tup);
}
