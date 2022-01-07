
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;
typedef int TimeoutId ;


 int GetCurrentTimestamp () ;
 int disable_alarm () ;
 int enable_timeout (int ,int ,int ) ;
 int schedule_alarm (int ) ;

void
enable_timeout_at(TimeoutId id, TimestampTz fin_time)
{
 TimestampTz now;


 disable_alarm();


 now = GetCurrentTimestamp();
 enable_timeout(id, now, fin_time);


 schedule_alarm(now);
}
