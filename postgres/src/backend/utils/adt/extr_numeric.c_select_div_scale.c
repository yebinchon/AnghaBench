
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ndigits; scalar_t__* digits; int weight; int dscale; } ;
typedef TYPE_1__ NumericVar ;
typedef scalar_t__ NumericDigit ;


 int DEC_DIGITS ;
 int Max (int,int ) ;
 int Min (int,int ) ;
 int NUMERIC_MAX_DISPLAY_SCALE ;
 int NUMERIC_MIN_DISPLAY_SCALE ;
 int NUMERIC_MIN_SIG_DIGITS ;

__attribute__((used)) static int
select_div_scale(const NumericVar *var1, const NumericVar *var2)
{
 int weight1,
    weight2,
    qweight,
    i;
 NumericDigit firstdigit1,
    firstdigit2;
 int rscale;
 weight1 = 0;
 firstdigit1 = 0;
 for (i = 0; i < var1->ndigits; i++)
 {
  firstdigit1 = var1->digits[i];
  if (firstdigit1 != 0)
  {
   weight1 = var1->weight - i;
   break;
  }
 }

 weight2 = 0;
 firstdigit2 = 0;
 for (i = 0; i < var2->ndigits; i++)
 {
  firstdigit2 = var2->digits[i];
  if (firstdigit2 != 0)
  {
   weight2 = var2->weight - i;
   break;
  }
 }





 qweight = weight1 - weight2;
 if (firstdigit1 <= firstdigit2)
  qweight--;


 rscale = NUMERIC_MIN_SIG_DIGITS - qweight * DEC_DIGITS;
 rscale = Max(rscale, var1->dscale);
 rscale = Max(rscale, var2->dscale);
 rscale = Max(rscale, NUMERIC_MIN_DISPLAY_SCALE);
 rscale = Min(rscale, NUMERIC_MAX_DISPLAY_SCALE);

 return rscale;
}
