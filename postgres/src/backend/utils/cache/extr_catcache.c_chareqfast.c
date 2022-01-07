
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 scalar_t__ DatumGetChar (int ) ;

__attribute__((used)) static bool
chareqfast(Datum a, Datum b)
{
 return DatumGetChar(a) == DatumGetChar(b);
}
