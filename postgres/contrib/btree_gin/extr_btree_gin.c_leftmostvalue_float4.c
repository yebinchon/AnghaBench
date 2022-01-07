
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int Float4GetDatum (int ) ;
 int get_float4_infinity () ;

__attribute__((used)) static Datum
leftmostvalue_float4(void)
{
 return Float4GetDatum(-get_float4_infinity());
}
