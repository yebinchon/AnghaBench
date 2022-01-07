
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {scalar_t__ tm_gmtoff; } ;
typedef int pg_time_t ;


 int Log_RotationAge ;
 int SECS_PER_MINUTE ;
 int log_timezone ;
 int next_rotation_time ;
 struct pg_tm* pg_localtime (int*,int ) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
set_next_rotation_time(void)
{
 pg_time_t now;
 struct pg_tm *tm;
 int rotinterval;


 if (Log_RotationAge <= 0)
  return;







 rotinterval = Log_RotationAge * SECS_PER_MINUTE;
 now = (pg_time_t) time(((void*)0));
 tm = pg_localtime(&now, log_timezone);
 now += tm->tm_gmtoff;
 now -= now % rotinterval;
 now += rotinterval;
 now -= tm->tm_gmtoff;
 next_rotation_time = now;
}
