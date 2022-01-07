
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isoweek2j (int,int) ;
 int j2date (int,int*,int*,int*) ;

void
isoweekdate2date(int isoweek, int wday, int *year, int *mon, int *mday)
{
 int jday;

 jday = isoweek2j(*year, isoweek);

 if (wday > 1)
  jday += wday - 2;
 else
  jday += 6;
 j2date(jday, year, mon, mday);
}
