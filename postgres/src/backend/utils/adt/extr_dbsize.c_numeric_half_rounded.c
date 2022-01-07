
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Numeric ;
typedef int Datum ;


 scalar_t__ DatumGetBool (int ) ;
 int DatumGetNumeric (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int Int64GetDatum (int) ;
 int NumericGetDatum (int ) ;
 int int8_numeric ;
 int numeric_add ;
 int numeric_div_trunc ;
 int numeric_ge ;
 int numeric_sub ;

__attribute__((used)) static Numeric
numeric_half_rounded(Numeric n)
{
 Datum d = NumericGetDatum(n);
 Datum zero;
 Datum one;
 Datum two;
 Datum result;

 zero = DirectFunctionCall1(int8_numeric, Int64GetDatum(0));
 one = DirectFunctionCall1(int8_numeric, Int64GetDatum(1));
 two = DirectFunctionCall1(int8_numeric, Int64GetDatum(2));

 if (DatumGetBool(DirectFunctionCall2(numeric_ge, d, zero)))
  d = DirectFunctionCall2(numeric_add, d, one);
 else
  d = DirectFunctionCall2(numeric_sub, d, one);

 result = DirectFunctionCall2(numeric_div_trunc, d, two);
 return DatumGetNumeric(result);
}
