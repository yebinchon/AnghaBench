
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_mday; int tm_mon; int tm_year; } ;
typedef int fsec_t ;
typedef int TimestampTz ;
typedef scalar_t__ DateADT ;


 int ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int GetCurrentTransactionStartTimestamp () ;
 scalar_t__ POSTGRES_EPOCH_JDATE ;
 scalar_t__ date2j (int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ timestamp2tm (int ,int*,struct pg_tm*,int *,int *,int *) ;

DateADT
GetSQLCurrentDate(void)
{
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

 return date2j(tm->tm_year, tm->tm_mon, tm->tm_mday) - POSTGRES_EPOCH_JDATE;
}
