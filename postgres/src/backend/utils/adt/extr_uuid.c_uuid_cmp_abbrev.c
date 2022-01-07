
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SortSupport ;
typedef scalar_t__ Datum ;



__attribute__((used)) static int
uuid_cmp_abbrev(Datum x, Datum y, SortSupport ssup)
{
 if (x > y)
  return 1;
 else if (x == y)
  return 0;
 else
  return -1;
}
