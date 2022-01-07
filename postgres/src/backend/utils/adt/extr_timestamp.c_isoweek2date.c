
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isoweek2j (int,int) ;
 int j2date (int ,int*,int*,int*) ;

void
isoweek2date(int woy, int *year, int *mon, int *mday)
{
 j2date(isoweek2j(*year, woy), year, mon, mday);
}
