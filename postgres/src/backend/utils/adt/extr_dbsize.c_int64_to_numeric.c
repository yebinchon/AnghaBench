
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int Numeric ;
typedef int Datum ;


 int DatumGetNumeric (int ) ;
 int DirectFunctionCall1 (int ,int ) ;
 int Int64GetDatum (int ) ;
 int int8_numeric ;

__attribute__((used)) static Numeric
int64_to_numeric(int64 v)
{
 Datum d = Int64GetDatum(v);

 return DatumGetNumeric(DirectFunctionCall1(int8_numeric, d));
}
