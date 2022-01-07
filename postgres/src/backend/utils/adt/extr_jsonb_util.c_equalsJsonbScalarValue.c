
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int boolean; int numeric; } ;
struct TYPE_8__ {int type; TYPE_1__ val; } ;
typedef TYPE_2__ JsonbValue ;


 int DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int ERROR ;
 int PointerGetDatum (int ) ;
 int elog (int ,char*) ;




 int lengthCompareJsonbStringValue (TYPE_2__*,TYPE_2__*) ;
 int numeric_eq ;

__attribute__((used)) static bool
equalsJsonbScalarValue(JsonbValue *aScalar, JsonbValue *bScalar)
{
 if (aScalar->type == bScalar->type)
 {
  switch (aScalar->type)
  {
   case 130:
    return 1;
   case 128:
    return lengthCompareJsonbStringValue(aScalar, bScalar) == 0;
   case 129:
    return DatumGetBool(DirectFunctionCall2(numeric_eq,
              PointerGetDatum(aScalar->val.numeric),
              PointerGetDatum(bScalar->val.numeric)));
   case 131:
    return aScalar->val.boolean == bScalar->val.boolean;

   default:
    elog(ERROR, "invalid jsonb scalar type");
  }
 }
 elog(ERROR, "jsonb scalar type mismatch");
 return 0;
}
