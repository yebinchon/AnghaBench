
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WaitEventTimeout ;






__attribute__((used)) static const char *
pgstat_get_wait_timeout(WaitEventTimeout w)
{
 const char *event_name = "unknown wait event";

 switch (w)
 {
  case 130:
   event_name = "BaseBackupThrottle";
   break;
  case 129:
   event_name = "PgSleep";
   break;
  case 128:
   event_name = "RecoveryApplyDelay";
   break;

 }

 return event_name;
}
