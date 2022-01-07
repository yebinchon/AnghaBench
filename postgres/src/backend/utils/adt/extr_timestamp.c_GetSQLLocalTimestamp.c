
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Timestamp ;


 int AdjustTimestampForTypmod (int *,int ) ;
 int GetCurrentTransactionStartTimestamp () ;
 int timestamptz2timestamp (int ) ;

Timestamp
GetSQLLocalTimestamp(int32 typmod)
{
 Timestamp ts;

 ts = timestamptz2timestamp(GetCurrentTransactionStartTimestamp());
 if (typmod >= 0)
  AdjustTimestampForTypmod(&ts, typmod);
 return ts;
}
