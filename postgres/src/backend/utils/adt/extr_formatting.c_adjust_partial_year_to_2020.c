
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
adjust_partial_year_to_2020(int year)
{





 if (year < 70)
  return year + 2000;

 else if (year < 100)
  return year + 1900;

 else if (year < 520)
  return year + 2000;

 else if (year < 1000)
  return year + 1000;
 else
  return year;
}
