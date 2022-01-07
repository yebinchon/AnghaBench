
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;


 int TimestampDifference (int ,int ,long*,int*) ;
 int TimestampTzPlusMilliseconds (scalar_t__,int) ;
 scalar_t__ last_reply_timestamp ;
 int waiting_for_ping_response ;
 int wal_sender_timeout ;

__attribute__((used)) static long
WalSndComputeSleeptime(TimestampTz now)
{
 long sleeptime = 10000;

 if (wal_sender_timeout > 0 && last_reply_timestamp > 0)
 {
  TimestampTz wakeup_time;
  long sec_to_timeout;
  int microsec_to_timeout;





  wakeup_time = TimestampTzPlusMilliseconds(last_reply_timestamp,
              wal_sender_timeout);






  if (!waiting_for_ping_response)
   wakeup_time = TimestampTzPlusMilliseconds(last_reply_timestamp,
               wal_sender_timeout / 2);


  TimestampDifference(now, wakeup_time,
       &sec_to_timeout, &microsec_to_timeout);

  sleeptime = sec_to_timeout * 1000 +
   microsec_to_timeout / 1000;
 }

 return sleeptime;
}
