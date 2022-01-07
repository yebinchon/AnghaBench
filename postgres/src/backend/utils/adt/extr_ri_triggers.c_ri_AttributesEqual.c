
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int fn_oid; } ;
struct TYPE_4__ {int eq_opr_finfo; TYPE_3__ cast_func_finfo; } ;
typedef TYPE_1__ RI_CompareHashEntry ;
typedef int Oid ;
typedef int Datum ;


 int BoolGetDatum (int) ;
 int DEFAULT_COLLATION_OID ;
 int DatumGetBool (int ) ;
 int FunctionCall2Coll (int *,int ,int ,int ) ;
 int FunctionCall3 (TYPE_3__*,int ,int ,int ) ;
 int Int32GetDatum (int) ;
 scalar_t__ OidIsValid (int ) ;
 TYPE_1__* ri_HashCompareOp (int ,int ) ;

__attribute__((used)) static bool
ri_AttributesEqual(Oid eq_opr, Oid typeid,
       Datum oldvalue, Datum newvalue)
{
 RI_CompareHashEntry *entry = ri_HashCompareOp(eq_opr, typeid);


 if (OidIsValid(entry->cast_func_finfo.fn_oid))
 {
  oldvalue = FunctionCall3(&entry->cast_func_finfo,
         oldvalue,
         Int32GetDatum(-1),
         BoolGetDatum(0));
  newvalue = FunctionCall3(&entry->cast_func_finfo,
         newvalue,
         Int32GetDatum(-1),
         BoolGetDatum(0));
 }
 return DatumGetBool(FunctionCall2Coll(&entry->eq_opr_finfo,
            DEFAULT_COLLATION_OID,
            oldvalue, newvalue));
}
