
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int dummy; } ;
typedef int int32 ;
typedef int fsec_t ;
typedef int TimestampTz ;
typedef int TimeADT ;


 int AdjustTimeForTypmod (int *,int ) ;
 int ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int GetCurrentTransactionStartTimestamp () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ timestamp2tm (int ,int*,struct pg_tm*,int *,int *,int *) ;
 int tm2time (struct pg_tm*,int ,int *) ;

TimeADT
GetSQLLocalTime(int32 typmod)
{
 TimeADT result;
 TimestampTz ts;
 struct pg_tm tt,
      *tm = &tt;
 fsec_t fsec;
 int tz;

 ts = GetCurrentTransactionStartTimestamp();

 if (timestamp2tm(ts, &tz, tm, &fsec, ((void*)0), ((void*)0)) != 0)
  ereport(ERROR,
    (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
     errmsg("timestamp out of range")));

 tm2time(tm, fsec, &result);
 AdjustTimeForTypmod(&result, typmod);
 return result;
}
