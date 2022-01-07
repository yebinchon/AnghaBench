
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int dummy; } ;
typedef int fsec_t ;
typedef scalar_t__ TimestampTz ;
typedef scalar_t__ Timestamp ;


 int Assert (int) ;
 int DetermineTimeZoneOffset (struct pg_tm*,int ) ;
 scalar_t__ END_TIMESTAMP ;
 int ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 scalar_t__ IS_VALID_TIMESTAMP (scalar_t__) ;
 scalar_t__ MIN_TIMESTAMP ;
 scalar_t__ TIMESTAMP_NOT_FINITE (scalar_t__) ;
 scalar_t__ dt2local (scalar_t__,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int session_timezone ;
 int timestamp2tm (scalar_t__,int *,struct pg_tm*,int *,int *,int *) ;

TimestampTz
timestamp2timestamptz_opt_overflow(Timestamp timestamp, int *overflow)
{
 TimestampTz result;
 struct pg_tm tt,
      *tm = &tt;
 fsec_t fsec;
 int tz;

 if (TIMESTAMP_NOT_FINITE(timestamp))
  return timestamp;

 if (!timestamp2tm(timestamp, ((void*)0), tm, &fsec, ((void*)0), ((void*)0)))
 {
  tz = DetermineTimeZoneOffset(tm, session_timezone);

  result = dt2local(timestamp, -tz);

  if (IS_VALID_TIMESTAMP(result))
  {
   return result;
  }
  else if (overflow)
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
 }

 ereport(ERROR,
   (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
    errmsg("timestamp out of range")));

 return 0;
}
