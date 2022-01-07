
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int INT_MIN ;
 int Int32GetDatum (int ) ;

__attribute__((used)) static Datum
leftmostvalue_int4(void)
{
 return Int32GetDatum(INT_MIN);
}
