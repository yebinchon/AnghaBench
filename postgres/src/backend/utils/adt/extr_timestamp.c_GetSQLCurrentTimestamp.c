
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int TimestampTz ;


 int AdjustTimestampForTypmod (int *,int ) ;
 int GetCurrentTransactionStartTimestamp () ;

TimestampTz
GetSQLCurrentTimestamp(int32 typmod)
{
 TimestampTz ts;

 ts = GetCurrentTransactionStartTimestamp();
 if (typmod >= 0)
  AdjustTimestampForTypmod(&ts, typmod);
 return ts;
}
