
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Numeric ;
typedef int Datum ;


 int DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int NumericGetDatum (int ) ;
 int numeric_lt ;

__attribute__((used)) static bool
numeric_is_less(Numeric a, Numeric b)
{
 Datum da = NumericGetDatum(a);
 Datum db = NumericGetDatum(b);

 return DatumGetBool(DirectFunctionCall2(numeric_lt, da, db));
}
