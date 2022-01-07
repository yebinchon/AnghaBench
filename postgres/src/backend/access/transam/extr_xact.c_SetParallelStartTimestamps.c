
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* TimestampTz ;


 int Assert (int ) ;
 int IsParallelWorker () ;
 void* stmtStartTimestamp ;
 void* xactStartTimestamp ;

void
SetParallelStartTimestamps(TimestampTz xact_ts, TimestampTz stmt_ts)
{
 Assert(IsParallelWorker());
 xactStartTimestamp = xact_ts;
 stmtStartTimestamp = stmt_ts;
}
