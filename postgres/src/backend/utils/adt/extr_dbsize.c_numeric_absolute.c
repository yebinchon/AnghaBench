
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Numeric ;
typedef int Datum ;


 int DatumGetNumeric (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int NumericGetDatum (int ) ;
 int numeric_abs ;

__attribute__((used)) static Numeric
numeric_absolute(Numeric n)
{
 Datum d = NumericGetDatum(n);
 Datum result;

 result = DirectFunctionCall1(numeric_abs, d);
 return DatumGetNumeric(result);
}
