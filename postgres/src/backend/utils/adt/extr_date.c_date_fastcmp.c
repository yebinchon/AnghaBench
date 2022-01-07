
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SortSupport ;
typedef int Datum ;
typedef scalar_t__ DateADT ;


 scalar_t__ DatumGetDateADT (int ) ;

__attribute__((used)) static int
date_fastcmp(Datum x, Datum y, SortSupport ssup)
{
 DateADT a = DatumGetDateADT(x);
 DateADT b = DatumGetDateADT(y);

 if (a < b)
  return -1;
 else if (a > b)
  return 1;
 return 0;
}
