
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
typedef int int64 ;
struct TYPE_4__ {int ndigits; int weight; int* digits; scalar_t__ dscale; int sign; } ;
typedef TYPE_1__ NumericVar ;
typedef int NumericDigit ;


 int DEC_DIGITS ;
 int NBASE ;
 int NUMERIC_NEG ;
 int NUMERIC_POS ;
 int alloc_var (TYPE_1__*,int) ;

__attribute__((used)) static void
int64_to_numericvar(int64 val, NumericVar *var)
{
 uint64 uval,
    newuval;
 NumericDigit *ptr;
 int ndigits;


 alloc_var(var, 20 / DEC_DIGITS);
 if (val < 0)
 {
  var->sign = NUMERIC_NEG;
  uval = -val;
 }
 else
 {
  var->sign = NUMERIC_POS;
  uval = val;
 }
 var->dscale = 0;
 if (val == 0)
 {
  var->ndigits = 0;
  var->weight = 0;
  return;
 }
 ptr = var->digits + var->ndigits;
 ndigits = 0;
 do
 {
  ptr--;
  ndigits++;
  newuval = uval / NBASE;
  *ptr = uval - newuval * NBASE;
  uval = newuval;
 } while (uval);
 var->digits = ptr;
 var->ndigits = ndigits;
 var->weight = ndigits - 1;
}
