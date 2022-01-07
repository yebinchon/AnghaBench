
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ ndigits; int weight; int* digits; } ;
typedef TYPE_1__ NumericVar ;


 int Abs (double) ;
 int DEC_DIGITS ;
 int NBASE ;
 scalar_t__ cmp_var (TYPE_1__ const*,int *) ;
 int const_one ;
 int const_one_point_one ;
 int const_zero_point_nine ;
 int free_var (TYPE_1__*) ;
 int init_var (TYPE_1__*) ;
 int log (double) ;
 scalar_t__ log10 (int) ;
 int sub_var (TYPE_1__ const*,int *,TYPE_1__*) ;

__attribute__((used)) static int
estimate_ln_dweight(const NumericVar *var)
{
 int ln_dweight;

 if (cmp_var(var, &const_zero_point_nine) >= 0 &&
  cmp_var(var, &const_one_point_one) <= 0)
 {






  NumericVar x;

  init_var(&x);
  sub_var(var, &const_one, &x);

  if (x.ndigits > 0)
  {

   ln_dweight = x.weight * DEC_DIGITS + (int) log10(x.digits[0]);
  }
  else
  {

   ln_dweight = 0;
  }

  free_var(&x);
 }
 else
 {





  if (var->ndigits > 0)
  {
   int digits;
   int dweight;
   double ln_var;

   digits = var->digits[0];
   dweight = var->weight * DEC_DIGITS;

   if (var->ndigits > 1)
   {
    digits = digits * NBASE + var->digits[1];
    dweight -= DEC_DIGITS;
   }






   ln_var = log((double) digits) + dweight * 2.302585092994046;
   ln_dweight = (int) log10(Abs(ln_var));
  }
  else
  {

   ln_dweight = 0;
  }
 }

 return ln_dweight;
}
