
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;


 int INT64CONST (int) ;

bool
TimestampDifferenceExceeds(TimestampTz start_time,
         TimestampTz stop_time,
         int msec)
{
 TimestampTz diff = stop_time - start_time;

 return (diff >= msec * INT64CONST(1000));
}
