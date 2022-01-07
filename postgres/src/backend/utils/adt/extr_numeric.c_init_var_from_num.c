
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * buf; int digits; int dscale; int sign; int weight; int ndigits; } ;
typedef TYPE_1__ NumericVar ;
typedef int Numeric ;


 int NUMERIC_DIGITS (int ) ;
 int NUMERIC_DSCALE (int ) ;
 int NUMERIC_NDIGITS (int ) ;
 int NUMERIC_SIGN (int ) ;
 int NUMERIC_WEIGHT (int ) ;

__attribute__((used)) static void
init_var_from_num(Numeric num, NumericVar *dest)
{
 dest->ndigits = NUMERIC_NDIGITS(num);
 dest->weight = NUMERIC_WEIGHT(num);
 dest->sign = NUMERIC_SIGN(num);
 dest->dscale = NUMERIC_DSCALE(num);
 dest->digits = NUMERIC_DIGITS(num);
 dest->buf = ((void*)0);
}
