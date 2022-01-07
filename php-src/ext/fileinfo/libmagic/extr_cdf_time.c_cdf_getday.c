
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t __arraycount (int*) ;
 scalar_t__ isleap (int) ;
 int* mdays ;

__attribute__((used)) static int
cdf_getday(int year, int days)
{
 size_t m;

 for (m = 0; m < __arraycount(mdays); m++) {
  int sub = mdays[m] + (m == 1 && isleap(year));
  if (days < sub)
   return days;
  days -= sub;
 }
 return days;
}
