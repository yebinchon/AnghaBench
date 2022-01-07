
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TimestampTz ;


 scalar_t__ GetCurrentTimestamp () ;
 scalar_t__ xactStopTimestamp ;

TimestampTz
GetCurrentTransactionStopTimestamp(void)
{
 if (xactStopTimestamp != 0)
  return xactStopTimestamp;
 return GetCurrentTimestamp();
}
