
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int tm_isdst; int tm_gmtoff; int tm_zone; int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef int AbsoluteTime ;


 scalar_t__ MAXTZLEN ;
 scalar_t__ PGTYPES_TS_BAD_TIMESTAMP ;
 int SECS_PER_HOUR ;
 int StrNCpy (char*,int ,scalar_t__) ;
 int TIMEZONE_GLOBAL ;
 int * TZNAME_GLOBAL ;
 scalar_t__ errno ;
 struct tm* gmtime (int *) ;
 struct tm* localtime (int *) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void
abstime2tm(AbsoluteTime _time, int *tzp, struct tm *tm, char **tzn)
{
 time_t time = (time_t) _time;
 struct tm *tx;

 errno = 0;
 if (tzp != ((void*)0))
  tx = localtime((time_t *) &time);
 else
  tx = gmtime((time_t *) &time);

 if (!tx)
 {
  errno = PGTYPES_TS_BAD_TIMESTAMP;
  return;
 }

 tm->tm_year = tx->tm_year + 1900;
 tm->tm_mon = tx->tm_mon + 1;
 tm->tm_mday = tx->tm_mday;
 tm->tm_hour = tx->tm_hour;
 tm->tm_min = tx->tm_min;
 tm->tm_sec = tx->tm_sec;
 tm->tm_isdst = tx->tm_isdst;
 if (tzp != ((void*)0))
 {

  *tzp = 0;
  if (tzn != ((void*)0))
   *tzn = ((void*)0);
 }
 else
  tm->tm_isdst = -1;

}
