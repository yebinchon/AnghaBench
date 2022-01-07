
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;


 int USECS_PER_SEC ;

void
TimestampDifference(TimestampTz start_time, TimestampTz stop_time,
     long *secs, int *microsecs)
{
 TimestampTz diff = stop_time - start_time;

 if (diff <= 0)
 {
  *secs = 0;
  *microsecs = 0;
 }
 else
 {
  *secs = (long) (diff / USECS_PER_SEC);
  *microsecs = (int) (diff % USECS_PER_SEC);
 }
}
