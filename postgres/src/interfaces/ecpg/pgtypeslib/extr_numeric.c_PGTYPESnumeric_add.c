
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ sign; void* dscale; void* rscale; } ;
typedef TYPE_1__ numeric ;


 void* Max (void*,void*) ;
 void* NUMERIC_NEG ;
 scalar_t__ NUMERIC_POS ;
 scalar_t__ add_abs (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int cmp_abs (TYPE_1__*,TYPE_1__*) ;
 int sub_abs (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int zero_var (TYPE_1__*) ;

int
PGTYPESnumeric_add(numeric *var1, numeric *var2, numeric *result)
{



 if (var1->sign == NUMERIC_POS)
 {
  if (var2->sign == NUMERIC_POS)
  {



   if (add_abs(var1, var2, result) != 0)
    return -1;
   result->sign = NUMERIC_POS;
  }
  else
  {



   switch (cmp_abs(var1, var2))
   {
    case 0:





     zero_var(result);
     result->rscale = Max(var1->rscale, var2->rscale);
     result->dscale = Max(var1->dscale, var2->dscale);
     break;

    case 1:





     if (sub_abs(var1, var2, result) != 0)
      return -1;
     result->sign = NUMERIC_POS;
     break;

    case -1:





     if (sub_abs(var2, var1, result) != 0)
      return -1;
     result->sign = NUMERIC_NEG;
     break;
   }
  }
 }
 else
 {
  if (var2->sign == NUMERIC_POS)
  {





   switch (cmp_abs(var1, var2))
   {
    case 0:





     zero_var(result);
     result->rscale = Max(var1->rscale, var2->rscale);
     result->dscale = Max(var1->dscale, var2->dscale);
     break;

    case 1:





     if (sub_abs(var1, var2, result) != 0)
      return -1;
     result->sign = NUMERIC_NEG;
     break;

    case -1:





     if (sub_abs(var2, var1, result) != 0)
      return -1;
     result->sign = NUMERIC_POS;
     break;
   }
  }
  else
  {





   if (add_abs(var1, var2, result) != 0)
    return -1;
   result->sign = NUMERIC_NEG;
  }
 }

 return 0;
}
