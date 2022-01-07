
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* digits; int ndigits; scalar_t__ weight; int sign; } ;
typedef TYPE_1__ NumericVar ;
typedef scalar_t__ NumericDigit ;


 int NUMERIC_POS ;

__attribute__((used)) static void
strip_var(NumericVar *var)
{
 NumericDigit *digits = var->digits;
 int ndigits = var->ndigits;


 while (ndigits > 0 && *digits == 0)
 {
  digits++;
  var->weight--;
  ndigits--;
 }


 while (ndigits > 0 && digits[ndigits - 1] == 0)
  ndigits--;


 if (ndigits == 0)
 {
  var->sign = NUMERIC_POS;
  var->weight = 0;
 }

 var->digits = digits;
 var->ndigits = ndigits;
}
