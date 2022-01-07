
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; int tm_mday; int tm_mon; int tm_year; } ;
typedef int TimestampTz ;
typedef int DateADT ;


 int Assert (int) ;
 scalar_t__ DATE_IS_NOBEGIN (int) ;
 scalar_t__ DATE_IS_NOEND (int) ;
 int DetermineTimeZoneOffset (struct pg_tm*,int ) ;
 int END_TIMESTAMP ;
 int ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int IS_VALID_TIMESTAMP (int) ;
 int MIN_TIMESTAMP ;
 int POSTGRES_EPOCH_JDATE ;
 int TIMESTAMP_END_JULIAN ;
 int TIMESTAMP_NOBEGIN (int) ;
 int TIMESTAMP_NOEND (int) ;
 int USECS_PER_DAY ;
 int USECS_PER_SEC ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int j2date (int,int *,int *,int *) ;
 int session_timezone ;

TimestampTz
date2timestamptz_opt_overflow(DateADT dateVal, int *overflow)
{
 TimestampTz result;
 struct pg_tm tt,
      *tm = &tt;
 int tz;

 if (DATE_IS_NOBEGIN(dateVal))
  TIMESTAMP_NOBEGIN(result);
 else if (DATE_IS_NOEND(dateVal))
  TIMESTAMP_NOEND(result);
 else
 {





  if (dateVal >= (TIMESTAMP_END_JULIAN - POSTGRES_EPOCH_JDATE))
  {
   if (overflow)
   {
    *overflow = 1;
    return (TimestampTz) 0;
   }
   else
   {
    ereport(ERROR,
      (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
       errmsg("date out of range for timestamp")));
   }
  }

  j2date(dateVal + POSTGRES_EPOCH_JDATE,
      &(tm->tm_year), &(tm->tm_mon), &(tm->tm_mday));
  tm->tm_hour = 0;
  tm->tm_min = 0;
  tm->tm_sec = 0;
  tz = DetermineTimeZoneOffset(tm, session_timezone);

  result = dateVal * USECS_PER_DAY + tz * USECS_PER_SEC;





  if (!IS_VALID_TIMESTAMP(result))
  {
   if (overflow)
   {
    if (result < MIN_TIMESTAMP)
     *overflow = -1;
    else
    {
     Assert(result >= END_TIMESTAMP);
     *overflow = 1;
    }
    return (TimestampTz) 0;
   }
   else
   {
    ereport(ERROR,
      (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
       errmsg("date out of range for timestamp")));
   }
  }
 }

 return result;
}
