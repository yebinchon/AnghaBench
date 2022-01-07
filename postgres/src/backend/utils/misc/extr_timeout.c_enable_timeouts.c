
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TimestampTz ;
typedef int TimeoutId ;
struct TYPE_3__ {int type; int fin_time; int delay_ms; int id; } ;
typedef TYPE_1__ EnableTimeoutParams ;


 int ERROR ;
 int GetCurrentTimestamp () ;


 int TimestampTzPlusMilliseconds (int ,int ) ;
 int disable_alarm () ;
 int elog (int ,char*,int) ;
 int enable_timeout (int ,int ,int ) ;
 int schedule_alarm (int ) ;

void
enable_timeouts(const EnableTimeoutParams *timeouts, int count)
{
 TimestampTz now;
 int i;


 disable_alarm();


 now = GetCurrentTimestamp();

 for (i = 0; i < count; i++)
 {
  TimeoutId id = timeouts[i].id;
  TimestampTz fin_time;

  switch (timeouts[i].type)
  {
   case 129:
    fin_time = TimestampTzPlusMilliseconds(now,
                timeouts[i].delay_ms);
    enable_timeout(id, now, fin_time);
    break;

   case 128:
    enable_timeout(id, now, timeouts[i].fin_time);
    break;

   default:
    elog(ERROR, "unrecognized timeout type %d",
      (int) timeouts[i].type);
    break;
  }
 }


 schedule_alarm(now);
}
