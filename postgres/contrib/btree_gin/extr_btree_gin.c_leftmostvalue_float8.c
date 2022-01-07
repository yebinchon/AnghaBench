
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int Float8GetDatum (int ) ;
 int get_float8_infinity () ;

__attribute__((used)) static Datum
leftmostvalue_float8(void)
{
 return Float8GetDatum(-get_float8_infinity());
}
