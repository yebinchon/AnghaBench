
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;
typedef int TimeoutId ;


 int GetCurrentTimestamp () ;
 int TimestampTzPlusMilliseconds (int ,int) ;
 int disable_alarm () ;
 int enable_timeout (int ,int ,int ) ;
 int schedule_alarm (int ) ;

void
enable_timeout_after(TimeoutId id, int delay_ms)
{
 TimestampTz now;
 TimestampTz fin_time;


 disable_alarm();


 now = GetCurrentTimestamp();
 fin_time = TimestampTzPlusMilliseconds(now, delay_ms);
 enable_timeout(id, now, fin_time);


 schedule_alarm(now);
}
