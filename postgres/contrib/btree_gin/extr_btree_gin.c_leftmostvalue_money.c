
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int Int64GetDatum (int ) ;
 int PG_INT64_MIN ;

__attribute__((used)) static Datum
leftmostvalue_money(void)
{
 return Int64GetDatum(PG_INT64_MIN);
}
