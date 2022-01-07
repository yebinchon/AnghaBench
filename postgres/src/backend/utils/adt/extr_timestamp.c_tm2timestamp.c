
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
typedef int fsec_t ;
typedef scalar_t__ Timestamp ;
typedef scalar_t__ TimeOffset ;


 int IS_VALID_JULIAN (int ,int ,int ) ;
 int IS_VALID_TIMESTAMP (scalar_t__) ;
 scalar_t__ POSTGRES_EPOCH_JDATE ;
 scalar_t__ USECS_PER_DAY ;
 scalar_t__ date2j (int ,int ,int ) ;
 scalar_t__ dt2local (scalar_t__,int) ;
 scalar_t__ time2t (int ,int ,int ,int ) ;

int
tm2timestamp(struct pg_tm *tm, fsec_t fsec, int *tzp, Timestamp *result)
{
 TimeOffset date;
 TimeOffset time;


 if (!IS_VALID_JULIAN(tm->tm_year, tm->tm_mon, tm->tm_mday))
 {
  *result = 0;
  return -1;
 }

 date = date2j(tm->tm_year, tm->tm_mon, tm->tm_mday) - POSTGRES_EPOCH_JDATE;
 time = time2t(tm->tm_hour, tm->tm_min, tm->tm_sec, fsec);

 *result = date * USECS_PER_DAY + time;

 if ((*result - time) / USECS_PER_DAY != date)
 {
  *result = 0;
  return -1;
 }


 if ((*result < 0 && date > 0) ||
  (*result > 0 && date < -1))
 {
  *result = 0;
  return -1;
 }
 if (tzp != ((void*)0))
  *result = dt2local(*result, -(*tzp));


 if (!IS_VALID_TIMESTAMP(*result))
 {
  *result = 0;
  return -1;
 }

 return 0;
}
