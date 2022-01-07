
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_isdst; int tm_gmtoff; char* tm_zone; int tm_sec; int tm_min; int tm_hour; int tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
typedef int pg_tz ;
typedef scalar_t__ pg_time_t ;
typedef scalar_t__ fsec_t ;
typedef scalar_t__ Timestamp ;


 scalar_t__ INT64CONST (int ) ;
 scalar_t__ INT_MAX ;
 scalar_t__ POSTGRES_EPOCH_JDATE ;
 scalar_t__ SECS_PER_DAY ;
 int TMODULO (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ UNIX_EPOCH_JDATE ;
 scalar_t__ USECS_PER_DAY ;
 scalar_t__ USECS_PER_SEC ;
 int dt2time (scalar_t__,int *,int *,int *,scalar_t__*) ;
 int j2date (int,scalar_t__*,scalar_t__*,int *) ;
 struct pg_tm* pg_localtime (scalar_t__*,int *) ;
 int * session_timezone ;

int
timestamp2tm(Timestamp dt, int *tzp, struct pg_tm *tm, fsec_t *fsec, const char **tzn, pg_tz *attimezone)
{
 Timestamp date;
 Timestamp time;
 pg_time_t utime;


 if (attimezone == ((void*)0))
  attimezone = session_timezone;

 time = dt;
 TMODULO(time, date, USECS_PER_DAY);

 if (time < INT64CONST(0))
 {
  time += USECS_PER_DAY;
  date -= 1;
 }


 date += POSTGRES_EPOCH_JDATE;


 if (date < 0 || date > (Timestamp) INT_MAX)
  return -1;

 j2date((int) date, &tm->tm_year, &tm->tm_mon, &tm->tm_mday);
 dt2time(time, &tm->tm_hour, &tm->tm_min, &tm->tm_sec, fsec);


 if (tzp == ((void*)0))
 {
  tm->tm_isdst = -1;
  tm->tm_gmtoff = 0;
  tm->tm_zone = ((void*)0);
  if (tzn != ((void*)0))
   *tzn = ((void*)0);
  return 0;
 }
 dt = (dt - *fsec) / USECS_PER_SEC +
  (POSTGRES_EPOCH_JDATE - UNIX_EPOCH_JDATE) * SECS_PER_DAY;
 utime = (pg_time_t) dt;
 if ((Timestamp) utime == dt)
 {
  struct pg_tm *tx = pg_localtime(&utime, attimezone);

  tm->tm_year = tx->tm_year + 1900;
  tm->tm_mon = tx->tm_mon + 1;
  tm->tm_mday = tx->tm_mday;
  tm->tm_hour = tx->tm_hour;
  tm->tm_min = tx->tm_min;
  tm->tm_sec = tx->tm_sec;
  tm->tm_isdst = tx->tm_isdst;
  tm->tm_gmtoff = tx->tm_gmtoff;
  tm->tm_zone = tx->tm_zone;
  *tzp = -tm->tm_gmtoff;
  if (tzn != ((void*)0))
   *tzn = tm->tm_zone;
 }
 else
 {



  *tzp = 0;

  tm->tm_isdst = -1;
  tm->tm_gmtoff = 0;
  tm->tm_zone = ((void*)0);
  if (tzn != ((void*)0))
   *tzn = ((void*)0);
 }

 return 0;
}
