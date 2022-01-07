
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int fn_strict; } ;
struct TYPE_4__ {int * supportCollation; TYPE_3__* penaltyFn; } ;
typedef TYPE_1__ GISTSTATE ;
typedef float GISTENTRY ;


 int FunctionCall3Coll (TYPE_3__*,int ,int ,int ,int ) ;
 int PointerGetDatum (float*) ;
 float get_float4_infinity () ;
 scalar_t__ isnan (float) ;

float
gistpenalty(GISTSTATE *giststate, int attno,
   GISTENTRY *orig, bool isNullOrig,
   GISTENTRY *add, bool isNullAdd)
{
 float penalty = 0.0;

 if (giststate->penaltyFn[attno].fn_strict == 0 ||
  (isNullOrig == 0 && isNullAdd == 0))
 {
  FunctionCall3Coll(&giststate->penaltyFn[attno],
        giststate->supportCollation[attno],
        PointerGetDatum(orig),
        PointerGetDatum(add),
        PointerGetDatum(&penalty));

  if (isnan(penalty) || penalty < 0.0)
   penalty = 0.0;
 }
 else if (isNullOrig && isNullAdd)
  penalty = 0.0;
 else
 {

  penalty = get_float4_infinity();
 }

 return penalty;
}
