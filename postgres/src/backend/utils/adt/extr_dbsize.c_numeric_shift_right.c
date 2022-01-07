
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int Numeric ;
typedef int Datum ;


 int DatumGetNumeric (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int Int64GetDatum (int ) ;
 int NumericGetDatum (int ) ;
 int int8_numeric ;
 int numeric_div_trunc ;

__attribute__((used)) static Numeric
numeric_shift_right(Numeric n, unsigned count)
{
 Datum d = NumericGetDatum(n);
 Datum divisor_int64;
 Datum divisor_numeric;
 Datum result;

 divisor_int64 = Int64GetDatum((int64) (1 << count));
 divisor_numeric = DirectFunctionCall1(int8_numeric, divisor_int64);
 result = DirectFunctionCall2(numeric_div_trunc, d, divisor_numeric);
 return DatumGetNumeric(result);
}
