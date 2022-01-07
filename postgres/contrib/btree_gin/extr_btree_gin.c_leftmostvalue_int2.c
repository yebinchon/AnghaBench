
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int Int16GetDatum (int ) ;
 int SHRT_MIN ;

__attribute__((used)) static Datum
leftmostvalue_int2(void)
{
 return Int16GetDatum(SHRT_MIN);
}
