
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_sec; int tm_min; int tm_hour; int tm_isdst; int tm_mday; int tm_mon; int tm_year; } ;
typedef int pg_tz ;
typedef int pg_time_t ;


 int IS_VALID_JULIAN (int ,int ,int ) ;
 int MINS_PER_HOUR ;
 int SECS_PER_DAY ;
 int SECS_PER_MINUTE ;
 int UNIX_EPOCH_JDATE ;
 int date2j (int ,int ,int ) ;
 int pg_next_dst_boundary (int*,long*,int*,int*,long*,int*,int *) ;

__attribute__((used)) static int
DetermineTimeZoneOffsetInternal(struct pg_tm *tm, pg_tz *tzp, pg_time_t *tp)
{
 int date,
    sec;
 pg_time_t day,
    mytime,
    prevtime,
    boundary,
    beforetime,
    aftertime;
 long int before_gmtoff,
    after_gmtoff;
 int before_isdst,
    after_isdst;
 int res;







 if (!IS_VALID_JULIAN(tm->tm_year, tm->tm_mon, tm->tm_mday))
  goto overflow;
 date = date2j(tm->tm_year, tm->tm_mon, tm->tm_mday) - UNIX_EPOCH_JDATE;

 day = ((pg_time_t) date) * SECS_PER_DAY;
 if (day / SECS_PER_DAY != date)
  goto overflow;
 sec = tm->tm_sec + (tm->tm_min + tm->tm_hour * MINS_PER_HOUR) * SECS_PER_MINUTE;
 mytime = day + sec;

 if (mytime < 0 && day > 0)
  goto overflow;







 prevtime = mytime - SECS_PER_DAY;
 if (mytime < 0 && prevtime > 0)
  goto overflow;

 res = pg_next_dst_boundary(&prevtime,
          &before_gmtoff, &before_isdst,
          &boundary,
          &after_gmtoff, &after_isdst,
          tzp);
 if (res < 0)
  goto overflow;

 if (res == 0)
 {

  tm->tm_isdst = before_isdst;
  *tp = mytime - before_gmtoff;
  return -(int) before_gmtoff;
 }




 beforetime = mytime - before_gmtoff;
 if ((before_gmtoff > 0 &&
   mytime < 0 && beforetime > 0) ||
  (before_gmtoff <= 0 &&
   mytime > 0 && beforetime < 0))
  goto overflow;
 aftertime = mytime - after_gmtoff;
 if ((after_gmtoff > 0 &&
   mytime < 0 && aftertime > 0) ||
  (after_gmtoff <= 0 &&
   mytime > 0 && aftertime < 0))
  goto overflow;






 if (beforetime < boundary && aftertime < boundary)
 {
  tm->tm_isdst = before_isdst;
  *tp = beforetime;
  return -(int) before_gmtoff;
 }
 if (beforetime > boundary && aftertime >= boundary)
 {
  tm->tm_isdst = after_isdst;
  *tp = aftertime;
  return -(int) after_gmtoff;
 }
 if (beforetime > aftertime)
 {
  tm->tm_isdst = before_isdst;
  *tp = beforetime;
  return -(int) before_gmtoff;
 }
 tm->tm_isdst = after_isdst;
 *tp = aftertime;
 return -(int) after_gmtoff;

overflow:

 tm->tm_isdst = 0;
 *tp = 0;
 return 0;
}
