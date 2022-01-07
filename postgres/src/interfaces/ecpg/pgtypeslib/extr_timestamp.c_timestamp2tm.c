
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ timestamp ;
typedef scalar_t__ time_t ;
struct tm {int tm_year; int tm_isdst; int tm_gmtoff; char* tm_zone; scalar_t__ tm_yday; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; int tm_sec; } ;
typedef scalar_t__ int64 ;
typedef int fsec_t ;


 scalar_t__ INT64CONST (int) ;
 scalar_t__ INT_MAX ;
 scalar_t__ IS_VALID_UTIME (int,scalar_t__,int ) ;
 int SECS_PER_HOUR ;
 int TIMEZONE_GLOBAL ;
 int TMODULO (scalar_t__,scalar_t__,scalar_t__) ;
 char** TZNAME_GLOBAL ;
 scalar_t__ USECS_PER_DAY ;
 scalar_t__ USECS_PER_SEC ;
 scalar_t__ date2j (int,int,int) ;
 int dt2time (scalar_t__,int *,int *,int *,int *) ;
 int j2date (int,int*,scalar_t__*,int *) ;
 struct tm* localtime (scalar_t__*) ;

__attribute__((used)) static int
timestamp2tm(timestamp dt, int *tzp, struct tm *tm, fsec_t *fsec, const char **tzn)
{
 int64 dDate,
    date0;
 int64 time;





 date0 = date2j(2000, 1, 1);

 time = dt;
 TMODULO(time, dDate, USECS_PER_DAY);

 if (time < INT64CONST(0))
 {
  time += USECS_PER_DAY;
  dDate -= 1;
 }


 dDate += date0;


 if (dDate < 0 || dDate > (timestamp) INT_MAX)
  return -1;

 j2date((int) dDate, &tm->tm_year, &tm->tm_mon, &tm->tm_mday);
 dt2time(time, &tm->tm_hour, &tm->tm_min, &tm->tm_sec, fsec);

 if (tzp != ((void*)0))
 {




  if (IS_VALID_UTIME(tm->tm_year, tm->tm_mon, tm->tm_mday))
  {
   *tzp = 0;

   tm->tm_isdst = -1;
   if (tzn != ((void*)0))
    *tzn = ((void*)0);

  }
  else
  {
   *tzp = 0;

   tm->tm_isdst = -1;
   if (tzn != ((void*)0))
    *tzn = ((void*)0);
  }
 }
 else
 {
  tm->tm_isdst = -1;
  if (tzn != ((void*)0))
   *tzn = ((void*)0);
 }

 tm->tm_yday = dDate - date2j(tm->tm_year, 1, 1) + 1;

 return 0;
}
