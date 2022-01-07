
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pg_tm {int dummy; } ;
typedef int int32 ;
typedef int fsec_t ;
typedef int TimestampTz ;
struct TYPE_4__ {int time; } ;
typedef TYPE_1__ TimeTzADT ;


 int AdjustTimeForTypmod (int *,int ) ;
 int ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int GetCurrentTransactionStartTimestamp () ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ palloc (int) ;
 scalar_t__ timestamp2tm (int ,int*,struct pg_tm*,int *,int *,int *) ;
 int tm2timetz (struct pg_tm*,int ,int,TYPE_1__*) ;

TimeTzADT *
GetSQLCurrentTime(int32 typmod)
{
 TimeTzADT *result;
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

 result = (TimeTzADT *) palloc(sizeof(TimeTzADT));
 tm2timetz(tm, fsec, tz, result);
 AdjustTimeForTypmod(&(result->time), typmod);
 return result;
}
