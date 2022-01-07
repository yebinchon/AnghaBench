
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ndigits; int* digits; int dscale; scalar_t__ sign; int weight; } ;
typedef TYPE_1__ NumericVar ;
typedef int NumericDigit ;


 int Assert (int) ;
 int DEC_DIGITS ;
 int INT_MAX ;
 int MUL_GUARD_DIGITS ;
 int Min (int,int) ;
 int NBASE ;
 int NUMERIC_NEG ;
 int NUMERIC_POS ;
 int alloc_var (TYPE_1__*,int) ;
 scalar_t__ palloc0 (int) ;
 int pfree (int*) ;
 int round_var (TYPE_1__*,int) ;
 int strip_var (TYPE_1__*) ;
 int zero_var (TYPE_1__*) ;

__attribute__((used)) static void
mul_var(const NumericVar *var1, const NumericVar *var2, NumericVar *result,
  int rscale)
{
 int res_ndigits;
 int res_sign;
 int res_weight;
 int maxdigits;
 int *dig;
 int carry;
 int maxdig;
 int newdig;
 int var1ndigits;
 int var2ndigits;
 NumericDigit *var1digits;
 NumericDigit *var2digits;
 NumericDigit *res_digits;
 int i,
    i1,
    i2;
 if (var1->ndigits > var2->ndigits)
 {
  const NumericVar *tmp = var1;

  var1 = var2;
  var2 = tmp;
 }


 var1ndigits = var1->ndigits;
 var2ndigits = var2->ndigits;
 var1digits = var1->digits;
 var2digits = var2->digits;

 if (var1ndigits == 0 || var2ndigits == 0)
 {

  zero_var(result);
  result->dscale = rscale;
  return;
 }


 if (var1->sign == var2->sign)
  res_sign = NUMERIC_POS;
 else
  res_sign = NUMERIC_NEG;
 res_weight = var1->weight + var2->weight + 2;
 res_ndigits = var1ndigits + var2ndigits + 1;
 maxdigits = res_weight + 1 + (rscale + DEC_DIGITS - 1) / DEC_DIGITS +
  MUL_GUARD_DIGITS;
 res_ndigits = Min(res_ndigits, maxdigits);

 if (res_ndigits < 3)
 {

  zero_var(result);
  result->dscale = rscale;
  return;
 }
 dig = (int *) palloc0(res_ndigits * sizeof(int));
 maxdig = 0;
 for (i1 = Min(var1ndigits - 1, res_ndigits - 3); i1 >= 0; i1--)
 {
  int var1digit = var1digits[i1];

  if (var1digit == 0)
   continue;


  maxdig += var1digit;
  if (maxdig > (INT_MAX - INT_MAX / NBASE) / (NBASE - 1))
  {

   carry = 0;
   for (i = res_ndigits - 1; i >= 0; i--)
   {
    newdig = dig[i] + carry;
    if (newdig >= NBASE)
    {
     carry = newdig / NBASE;
     newdig -= carry * NBASE;
    }
    else
     carry = 0;
    dig[i] = newdig;
   }
   Assert(carry == 0);

   maxdig = 1 + var1digit;
  }







  for (i2 = Min(var2ndigits - 1, res_ndigits - i1 - 3), i = i1 + i2 + 2;
    i2 >= 0; i2--)
   dig[i--] += var1digit * var2digits[i2];
 }






 alloc_var(result, res_ndigits);
 res_digits = result->digits;
 carry = 0;
 for (i = res_ndigits - 1; i >= 0; i--)
 {
  newdig = dig[i] + carry;
  if (newdig >= NBASE)
  {
   carry = newdig / NBASE;
   newdig -= carry * NBASE;
  }
  else
   carry = 0;
  res_digits[i] = newdig;
 }
 Assert(carry == 0);

 pfree(dig);




 result->weight = res_weight;
 result->sign = res_sign;


 round_var(result, rscale);


 strip_var(result);
}
