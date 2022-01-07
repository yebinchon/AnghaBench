
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int timestamp ;
struct tm {int tm_mon; int tm_year; scalar_t__ tm_mday; } ;
struct TYPE_3__ {scalar_t__ month; scalar_t__ time; } ;
typedef TYPE_1__ interval ;
typedef int fsec_t ;


 int MONTHS_PER_YEAR ;
 scalar_t__ TIMESTAMP_NOT_FINITE (int ) ;
 scalar_t__** day_tab ;
 size_t isleap (int) ;
 scalar_t__ timestamp2tm (int ,int *,struct tm*,int *,int *) ;
 scalar_t__ tm2timestamp (struct tm*,int ,int *,int *) ;

int
PGTYPEStimestamp_add_interval(timestamp * tin, interval * span, timestamp * tout)
{
 if (TIMESTAMP_NOT_FINITE(*tin))
  *tout = *tin;


 else
 {
  if (span->month != 0)
  {
   struct tm tt,
        *tm = &tt;
   fsec_t fsec;


   if (timestamp2tm(*tin, ((void*)0), tm, &fsec, ((void*)0)) != 0)
    return -1;
   tm->tm_mon += span->month;
   if (tm->tm_mon > MONTHS_PER_YEAR)
   {
    tm->tm_year += (tm->tm_mon - 1) / MONTHS_PER_YEAR;
    tm->tm_mon = (tm->tm_mon - 1) % MONTHS_PER_YEAR + 1;
   }
   else if (tm->tm_mon < 1)
   {
    tm->tm_year += tm->tm_mon / MONTHS_PER_YEAR - 1;
    tm->tm_mon = tm->tm_mon % MONTHS_PER_YEAR + MONTHS_PER_YEAR;
   }



   if (tm->tm_mday > day_tab[isleap(tm->tm_year)][tm->tm_mon - 1])
    tm->tm_mday = (day_tab[isleap(tm->tm_year)][tm->tm_mon - 1]);


   if (tm2timestamp(tm, fsec, ((void*)0), tin) != 0)
    return -1;
  }


  *tin += span->time;
  *tout = *tin;
 }
 return 0;

}
