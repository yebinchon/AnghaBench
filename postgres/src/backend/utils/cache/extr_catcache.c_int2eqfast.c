
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 scalar_t__ DatumGetInt16 (int ) ;

__attribute__((used)) static bool
int2eqfast(Datum a, Datum b)
{
 return DatumGetInt16(a) == DatumGetInt16(b);
}
