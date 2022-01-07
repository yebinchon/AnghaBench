
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef scalar_t__ TimestampTz ;


 int feTimestampDifference (scalar_t__,scalar_t__,long*,int*) ;
 scalar_t__ still_sending ;

__attribute__((used)) static long
CalculateCopyStreamSleeptime(TimestampTz now, int standby_message_timeout,
        TimestampTz last_status)
{
 TimestampTz status_targettime = 0;
 long sleeptime;

 if (standby_message_timeout && still_sending)
  status_targettime = last_status +
   (standby_message_timeout - 1) * ((int64) 1000);

 if (status_targettime > 0)
 {
  long secs;
  int usecs;

  feTimestampDifference(now,
         status_targettime,
         &secs,
         &usecs);

  if (secs <= 0)
  {
   secs = 1;
   usecs = 0;
  }

  sleeptime = secs * 1000 + usecs / 1000;
 }
 else
  sleeptime = -1;

 return sleeptime;
}
