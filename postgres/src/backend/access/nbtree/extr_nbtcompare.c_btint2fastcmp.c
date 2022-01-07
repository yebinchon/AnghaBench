
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int16 ;
typedef int SortSupport ;
typedef int Datum ;


 scalar_t__ DatumGetInt16 (int ) ;

__attribute__((used)) static int
btint2fastcmp(Datum x, Datum y, SortSupport ssup)
{
 int16 a = DatumGetInt16(x);
 int16 b = DatumGetInt16(y);

 return (int) a - (int) b;
}
