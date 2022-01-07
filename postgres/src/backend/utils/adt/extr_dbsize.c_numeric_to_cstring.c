
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Numeric ;
typedef int Datum ;


 char* DatumGetCString (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int NumericGetDatum (int ) ;
 int numeric_out ;

__attribute__((used)) static char *
numeric_to_cstring(Numeric n)
{
 Datum d = NumericGetDatum(n);

 return DatumGetCString(DirectFunctionCall1(numeric_out, d));
}
