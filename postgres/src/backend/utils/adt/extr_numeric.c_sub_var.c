
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ sign; void* dscale; } ;
typedef TYPE_1__ NumericVar ;


 void* Max (void*,void*) ;
 scalar_t__ NUMERIC_NEG ;
 scalar_t__ NUMERIC_POS ;
 int add_abs (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*) ;
 int cmp_abs (TYPE_1__ const*,TYPE_1__ const*) ;
 int sub_abs (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*) ;
 int zero_var (TYPE_1__*) ;

__attribute__((used)) static void
sub_var(const NumericVar *var1, const NumericVar *var2, NumericVar *result)
{



 if (var1->sign == NUMERIC_POS)
 {
  if (var2->sign == NUMERIC_NEG)
  {





   add_abs(var1, var2, result);
   result->sign = NUMERIC_POS;
  }
  else
  {





   switch (cmp_abs(var1, var2))
   {
    case 0:





     zero_var(result);
     result->dscale = Max(var1->dscale, var2->dscale);
     break;

    case 1:





     sub_abs(var1, var2, result);
     result->sign = NUMERIC_POS;
     break;

    case -1:





     sub_abs(var2, var1, result);
     result->sign = NUMERIC_NEG;
     break;
   }
  }
 }
 else
 {
  if (var2->sign == NUMERIC_NEG)
  {





   switch (cmp_abs(var1, var2))
   {
    case 0:





     zero_var(result);
     result->dscale = Max(var1->dscale, var2->dscale);
     break;

    case 1:





     sub_abs(var1, var2, result);
     result->sign = NUMERIC_NEG;
     break;

    case -1:





     sub_abs(var2, var1, result);
     result->sign = NUMERIC_POS;
     break;
   }
  }
  else
  {





   add_abs(var1, var2, result);
   result->sign = NUMERIC_NEG;
  }
 }
}
