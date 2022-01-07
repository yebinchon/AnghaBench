
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; int val; } ;
struct TYPE_7__ {int boolean; int numeric; TYPE_1__ string; } ;
struct TYPE_8__ {int type; TYPE_2__ val; } ;
typedef TYPE_3__ JsonbValue ;


 int DEFAULT_COLLATION_OID ;
 int DatumGetInt32 (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int ERROR ;
 int PointerGetDatum (int ) ;
 int elog (int ,char*) ;




 int numeric_cmp ;
 int varstr_cmp (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
compareJsonbScalarValue(JsonbValue *aScalar, JsonbValue *bScalar)
{
 if (aScalar->type == bScalar->type)
 {
  switch (aScalar->type)
  {
   case 130:
    return 0;
   case 128:
    return varstr_cmp(aScalar->val.string.val,
          aScalar->val.string.len,
          bScalar->val.string.val,
          bScalar->val.string.len,
          DEFAULT_COLLATION_OID);
   case 129:
    return DatumGetInt32(DirectFunctionCall2(numeric_cmp,
               PointerGetDatum(aScalar->val.numeric),
               PointerGetDatum(bScalar->val.numeric)));
   case 131:
    if (aScalar->val.boolean == bScalar->val.boolean)
     return 0;
    else if (aScalar->val.boolean > bScalar->val.boolean)
     return 1;
    else
     return -1;
   default:
    elog(ERROR, "invalid jsonb scalar type");
  }
 }
 elog(ERROR, "jsonb scalar type mismatch");
 return -1;
}
