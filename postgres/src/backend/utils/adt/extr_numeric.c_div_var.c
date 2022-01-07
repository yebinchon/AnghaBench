
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ndigits; scalar_t__* digits; int dscale; scalar_t__ sign; int weight; } ;
typedef TYPE_1__ NumericVar ;
typedef int NumericDigit ;


 int Assert (int) ;
 int DEC_DIGITS ;
 int ERRCODE_DIVISION_BY_ZERO ;
 int ERROR ;
 int HALF_NBASE ;
 int Max (int,int) ;
 int NBASE ;
 int NUMERIC_NEG ;
 int NUMERIC_POS ;
 int alloc_var (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int memcpy (int*,scalar_t__*,int) ;
 scalar_t__ palloc0 (int) ;
 int pfree (int*) ;
 int round_var (TYPE_1__*,int) ;
 int strip_var (TYPE_1__*) ;
 int trunc_var (TYPE_1__*,int) ;
 int zero_var (TYPE_1__*) ;

__attribute__((used)) static void
div_var(const NumericVar *var1, const NumericVar *var2, NumericVar *result,
  int rscale, bool round)
{
 int div_ndigits;
 int res_ndigits;
 int res_sign;
 int res_weight;
 int carry;
 int borrow;
 int divisor1;
 int divisor2;
 NumericDigit *dividend;
 NumericDigit *divisor;
 NumericDigit *res_digits;
 int i;
 int j;


 int var1ndigits = var1->ndigits;
 int var2ndigits = var2->ndigits;





 if (var2ndigits == 0 || var2->digits[0] == 0)
  ereport(ERROR,
    (errcode(ERRCODE_DIVISION_BY_ZERO),
     errmsg("division by zero")));




 if (var1ndigits == 0)
 {
  zero_var(result);
  result->dscale = rscale;
  return;
 }






 if (var1->sign == var2->sign)
  res_sign = NUMERIC_POS;
 else
  res_sign = NUMERIC_NEG;
 res_weight = var1->weight - var2->weight;

 res_ndigits = res_weight + 1 + (rscale + DEC_DIGITS - 1) / DEC_DIGITS;

 res_ndigits = Max(res_ndigits, 1);

 if (round)
  res_ndigits++;
 div_ndigits = res_ndigits + var2ndigits;
 div_ndigits = Max(div_ndigits, var1ndigits);
 dividend = (NumericDigit *)
  palloc0((div_ndigits + var2ndigits + 2) * sizeof(NumericDigit));
 divisor = dividend + (div_ndigits + 1);
 memcpy(dividend + 1, var1->digits, var1ndigits * sizeof(NumericDigit));
 memcpy(divisor + 1, var2->digits, var2ndigits * sizeof(NumericDigit));




 alloc_var(result, res_ndigits);
 res_digits = result->digits;

 if (var2ndigits == 1)
 {




  divisor1 = divisor[1];
  carry = 0;
  for (i = 0; i < res_ndigits; i++)
  {
   carry = carry * NBASE + dividend[i + 1];
   res_digits[i] = carry / divisor1;
   carry = carry % divisor1;
  }
 }
 else
 {
  if (divisor[1] < HALF_NBASE)
  {
   int d = NBASE / (divisor[1] + 1);

   carry = 0;
   for (i = var2ndigits; i > 0; i--)
   {
    carry += divisor[i] * d;
    divisor[i] = carry % NBASE;
    carry = carry / NBASE;
   }
   Assert(carry == 0);
   carry = 0;

   for (i = var1ndigits; i >= 0; i--)
   {
    carry += dividend[i] * d;
    dividend[i] = carry % NBASE;
    carry = carry / NBASE;
   }
   Assert(carry == 0);
   Assert(divisor[1] >= HALF_NBASE);
  }

  divisor1 = divisor[1];
  divisor2 = divisor[2];







  for (j = 0; j < res_ndigits; j++)
  {

   int next2digits = dividend[j] * NBASE + dividend[j + 1];
   int qhat;







   if (next2digits == 0)
   {
    res_digits[j] = 0;
    continue;
   }

   if (dividend[j] == divisor1)
    qhat = NBASE - 1;
   else
    qhat = next2digits / divisor1;







   while (divisor2 * qhat >
       (next2digits - qhat * divisor1) * NBASE + dividend[j + 2])
    qhat--;


   if (qhat > 0)
   {





    carry = 0;
    borrow = 0;
    for (i = var2ndigits; i >= 0; i--)
    {
     carry += divisor[i] * qhat;
     borrow -= carry % NBASE;
     carry = carry / NBASE;
     borrow += dividend[j + i];
     if (borrow < 0)
     {
      dividend[j + i] = borrow + NBASE;
      borrow = -1;
     }
     else
     {
      dividend[j + i] = borrow;
      borrow = 0;
     }
    }
    Assert(carry == 0);
    if (borrow)
    {
     qhat--;
     carry = 0;
     for (i = var2ndigits; i >= 0; i--)
     {
      carry += dividend[j + i] + divisor[i];
      if (carry >= NBASE)
      {
       dividend[j + i] = carry - NBASE;
       carry = 1;
      }
      else
      {
       dividend[j + i] = carry;
       carry = 0;
      }
     }

     Assert(carry == 1);
    }
   }


   res_digits[j] = qhat;
  }
 }

 pfree(dividend);




 result->weight = res_weight;
 result->sign = res_sign;


 if (round)
  round_var(result, rscale);
 else
  trunc_var(result, rscale);


 strip_var(result);
}
