
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int dummy; } ;
typedef int fsec_t ;
typedef int TimestampTz ;
typedef int Timestamp ;


 int ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 scalar_t__ TIMESTAMP_NOT_FINITE (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ timestamp2tm (int ,int*,struct pg_tm*,int *,int *,int *) ;
 scalar_t__ tm2timestamp (struct pg_tm*,int ,int *,int *) ;

__attribute__((used)) static Timestamp
timestamptz2timestamp(TimestampTz timestamp)
{
 Timestamp result;
 struct pg_tm tt,
      *tm = &tt;
 fsec_t fsec;
 int tz;

 if (TIMESTAMP_NOT_FINITE(timestamp))
  result = timestamp;
 else
 {
  if (timestamp2tm(timestamp, &tz, tm, &fsec, ((void*)0), ((void*)0)) != 0)
   ereport(ERROR,
     (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
      errmsg("timestamp out of range")));
  if (tm2timestamp(tm, fsec, ((void*)0), &result) != 0)
   ereport(ERROR,
     (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
      errmsg("timestamp out of range")));
 }
 return result;
}
