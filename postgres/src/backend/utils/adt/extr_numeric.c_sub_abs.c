
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ndigits; int* digits; int weight; int dscale; int* buf; } ;
typedef TYPE_1__ NumericVar ;
typedef int NumericDigit ;


 int Assert (int) ;
 int Max (int,int) ;
 int NBASE ;
 int* digitbuf_alloc (int) ;
 int digitbuf_free (int*) ;
 int strip_var (TYPE_1__*) ;

__attribute__((used)) static void
sub_abs(const NumericVar *var1, const NumericVar *var2, NumericVar *result)
{
 NumericDigit *res_buf;
 NumericDigit *res_digits;
 int res_ndigits;
 int res_weight;
 int res_rscale,
    rscale1,
    rscale2;
 int res_dscale;
 int i,
    i1,
    i2;
 int borrow = 0;


 int var1ndigits = var1->ndigits;
 int var2ndigits = var2->ndigits;
 NumericDigit *var1digits = var1->digits;
 NumericDigit *var2digits = var2->digits;

 res_weight = var1->weight;

 res_dscale = Max(var1->dscale, var2->dscale);


 rscale1 = var1->ndigits - var1->weight - 1;
 rscale2 = var2->ndigits - var2->weight - 1;
 res_rscale = Max(rscale1, rscale2);

 res_ndigits = res_rscale + res_weight + 1;
 if (res_ndigits <= 0)
  res_ndigits = 1;

 res_buf = digitbuf_alloc(res_ndigits + 1);
 res_buf[0] = 0;
 res_digits = res_buf + 1;

 i1 = res_rscale + var1->weight + 1;
 i2 = res_rscale + var2->weight + 1;
 for (i = res_ndigits - 1; i >= 0; i--)
 {
  i1--;
  i2--;
  if (i1 >= 0 && i1 < var1ndigits)
   borrow += var1digits[i1];
  if (i2 >= 0 && i2 < var2ndigits)
   borrow -= var2digits[i2];

  if (borrow < 0)
  {
   res_digits[i] = borrow + NBASE;
   borrow = -1;
  }
  else
  {
   res_digits[i] = borrow;
   borrow = 0;
  }
 }

 Assert(borrow == 0);

 digitbuf_free(result->buf);
 result->ndigits = res_ndigits;
 result->buf = res_buf;
 result->digits = res_digits;
 result->weight = res_weight;
 result->dscale = res_dscale;


 strip_var(result);
}
