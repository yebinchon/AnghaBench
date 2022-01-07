
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * supportCollation; int * equalFn; } ;
typedef TYPE_1__ GISTSTATE ;
typedef int Datum ;


 int FunctionCall3Coll (int *,int ,int ,int ,int ) ;
 int PointerGetDatum (int*) ;

bool
gistKeyIsEQ(GISTSTATE *giststate, int attno, Datum a, Datum b)
{
 bool result;

 FunctionCall3Coll(&giststate->equalFn[attno],
       giststate->supportCollation[attno],
       a, b,
       PointerGetDatum(&result));
 return result;
}
