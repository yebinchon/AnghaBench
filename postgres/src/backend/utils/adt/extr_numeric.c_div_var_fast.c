
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ndigits; int* digits; int dscale; scalar_t__ sign; int weight; } ;
typedef TYPE_1__ NumericVar ;
typedef int NumericDigit ;


 scalar_t__ Abs (int) ;
 int Assert (int) ;
 int DEC_DIGITS ;
 int DIV_GUARD_DIGITS ;
 int ERRCODE_DIVISION_BY_ZERO ;
 int ERROR ;
 double INT_MAX ;
 int Min (int,int) ;
 double NBASE ;
 int NUMERIC_NEG ;
 int NUMERIC_POS ;
 int alloc_var (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ palloc0 (int) ;
 int pfree (int*) ;
 int round_var (TYPE_1__*,int) ;
 int strip_var (TYPE_1__*) ;
 int trunc_var (TYPE_1__*,int) ;
 int zero_var (TYPE_1__*) ;

__attribute__((used)) static void
div_var_fast(const NumericVar *var1, const NumericVar *var2,
    NumericVar *result, int rscale, bool round)
{
 int div_ndigits;
 int res_sign;
 int res_weight;
 int *div;
 int qdigit;
 int carry;
 int maxdiv;
 int newdig;
 NumericDigit *res_digits;
 double fdividend,
    fdivisor,
    fdivisorinverse,
    fquotient;
 int qi;
 int i;


 int var1ndigits = var1->ndigits;
 int var2ndigits = var2->ndigits;
 NumericDigit *var1digits = var1->digits;
 NumericDigit *var2digits = var2->digits;





 if (var2ndigits == 0 || var2digits[0] == 0)
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
 res_weight = var1->weight - var2->weight + 1;

 div_ndigits = res_weight + 1 + (rscale + DEC_DIGITS - 1) / DEC_DIGITS;

 div_ndigits += DIV_GUARD_DIGITS;
 if (div_ndigits < DIV_GUARD_DIGITS)
  div_ndigits = DIV_GUARD_DIGITS;

 if (div_ndigits < var1ndigits)
  div_ndigits = var1ndigits;
 div = (int *) palloc0((div_ndigits + 1) * sizeof(int));
 for (i = 0; i < var1ndigits; i++)
  div[i + 1] = var1digits[i];







 fdivisor = (double) var2digits[0];
 for (i = 1; i < 4; i++)
 {
  fdivisor *= NBASE;
  if (i < var2ndigits)
   fdivisor += (double) var2digits[i];
 }
 fdivisorinverse = 1.0 / fdivisor;
 maxdiv = 1;




 for (qi = 0; qi < div_ndigits; qi++)
 {

  fdividend = (double) div[qi];
  for (i = 1; i < 4; i++)
  {
   fdividend *= NBASE;
   if (qi + i <= div_ndigits)
    fdividend += (double) div[qi + i];
  }

  fquotient = fdividend * fdivisorinverse;
  qdigit = (fquotient >= 0.0) ? ((int) fquotient) :
   (((int) fquotient) - 1);

  if (qdigit != 0)
  {

   maxdiv += Abs(qdigit);
   if (maxdiv > (INT_MAX - INT_MAX / NBASE - 1) / (NBASE - 1))
   {

    carry = 0;
    for (i = div_ndigits; i > qi; i--)
    {
     newdig = div[i] + carry;
     if (newdig < 0)
     {
      carry = -((-newdig - 1) / NBASE) - 1;
      newdig -= carry * NBASE;
     }
     else if (newdig >= NBASE)
     {
      carry = newdig / NBASE;
      newdig -= carry * NBASE;
     }
     else
      carry = 0;
     div[i] = newdig;
    }
    newdig = div[qi] + carry;
    div[qi] = newdig;






    maxdiv = 1;





    fdividend = (double) div[qi];
    for (i = 1; i < 4; i++)
    {
     fdividend *= NBASE;
     if (qi + i <= div_ndigits)
      fdividend += (double) div[qi + i];
    }

    fquotient = fdividend * fdivisorinverse;
    qdigit = (fquotient >= 0.0) ? ((int) fquotient) :
     (((int) fquotient) - 1);
    maxdiv += Abs(qdigit);
   }
   if (qdigit != 0)
   {
    int istop = Min(var2ndigits, div_ndigits - qi + 1);

    for (i = 0; i < istop; i++)
     div[qi + i] -= qdigit * var2digits[i];
   }
  }
  div[qi + 1] += div[qi] * NBASE;

  div[qi] = qdigit;
 }




 fdividend = (double) div[qi];
 for (i = 1; i < 4; i++)
  fdividend *= NBASE;
 fquotient = fdividend * fdivisorinverse;
 qdigit = (fquotient >= 0.0) ? ((int) fquotient) :
  (((int) fquotient) - 1);
 div[qi] = qdigit;
 alloc_var(result, div_ndigits + 1);
 res_digits = result->digits;
 carry = 0;
 for (i = div_ndigits; i >= 0; i--)
 {
  newdig = div[i] + carry;
  if (newdig < 0)
  {
   carry = -((-newdig - 1) / NBASE) - 1;
   newdig -= carry * NBASE;
  }
  else if (newdig >= NBASE)
  {
   carry = newdig / NBASE;
   newdig -= carry * NBASE;
  }
  else
   carry = 0;
  res_digits[i] = newdig;
 }
 Assert(carry == 0);

 pfree(div);




 result->weight = res_weight;
 result->sign = res_sign;


 if (round)
  round_var(result, rscale);
 else
  trunc_var(result, rscale);


 strip_var(result);
}
