
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;


 int xactStartTimestamp ;

TimestampTz
GetCurrentTransactionStartTimestamp(void)
{
 return xactStartTimestamp;
}
