
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sign; } ;
typedef TYPE_1__ numeric ;


 int INT_MAX ;
 scalar_t__ NUMERIC_NEG ;
 scalar_t__ NUMERIC_POS ;
 int PGTYPES_NUM_BAD_NUMERIC ;
 int cmp_abs (TYPE_1__*,TYPE_1__*) ;
 int errno ;

int
PGTYPESnumeric_cmp(numeric *var1, numeric *var2)
{



 if (var1->sign == NUMERIC_POS && var2->sign == NUMERIC_POS)
  return cmp_abs(var1, var2);


 if (var1->sign == NUMERIC_NEG && var2->sign == NUMERIC_NEG)
 {



  return cmp_abs(var2, var1);
 }


 if (var1->sign == NUMERIC_POS && var2->sign == NUMERIC_NEG)
  return 1;
 if (var1->sign == NUMERIC_NEG && var2->sign == NUMERIC_POS)
  return -1;

 errno = PGTYPES_NUM_BAD_NUMERIC;
 return INT_MAX;

}
