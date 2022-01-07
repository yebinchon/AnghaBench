
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int digits; int dscale; int sign; int weight; } ;
typedef TYPE_1__ NumericVar ;
typedef int NumericDigit ;
typedef int Numeric ;


 int NUMERIC_DIGITS (int ) ;
 int NUMERIC_DSCALE (int ) ;
 int NUMERIC_NDIGITS (int ) ;
 int NUMERIC_SIGN (int ) ;
 int NUMERIC_WEIGHT (int ) ;
 int alloc_var (TYPE_1__*,int) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void
set_var_from_num(Numeric num, NumericVar *dest)
{
 int ndigits;

 ndigits = NUMERIC_NDIGITS(num);

 alloc_var(dest, ndigits);

 dest->weight = NUMERIC_WEIGHT(num);
 dest->sign = NUMERIC_SIGN(num);
 dest->dscale = NUMERIC_DSCALE(num);

 memcpy(dest->digits, NUMERIC_DIGITS(num), ndigits * sizeof(NumericDigit));
}
