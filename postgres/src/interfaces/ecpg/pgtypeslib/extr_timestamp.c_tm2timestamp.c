
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_sec; int tm_min; int tm_hour; } ;
typedef int int64 ;
typedef int fsec_t ;


 int IS_VALID_JULIAN (int,int,int) ;
 int IS_VALID_TIMESTAMP (int) ;
 int USECS_PER_DAY ;
 int date2j (int,int,int) ;
 int dt2local (int,int) ;
 int time2t (int ,int ,int ,int ) ;

int
tm2timestamp(struct tm *tm, fsec_t fsec, int *tzp, timestamp * result)
{
 int dDate;
 int64 time;


 if (!IS_VALID_JULIAN(tm->tm_year, tm->tm_mon, tm->tm_mday))
  return -1;

 dDate = date2j(tm->tm_year, tm->tm_mon, tm->tm_mday) - date2j(2000, 1, 1);
 time = time2t(tm->tm_hour, tm->tm_min, tm->tm_sec, fsec);
 *result = (dDate * USECS_PER_DAY) + time;

 if ((*result - time) / USECS_PER_DAY != dDate)
  return -1;


 if ((*result < 0 && dDate > 0) ||
  (*result > 0 && dDate < -1))
  return -1;
 if (tzp != ((void*)0))
  *result = dt2local(*result, -(*tzp));


 if (!IS_VALID_TIMESTAMP(*result))
  return -1;

 return 0;
}
