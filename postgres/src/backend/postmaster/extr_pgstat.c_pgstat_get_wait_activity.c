
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WaitEventActivity ;
__attribute__((used)) static const char *
pgstat_get_wait_activity(WaitEventActivity w)
{
 const char *event_name = "unknown wait event";

 switch (w)
 {
  case 141:
   event_name = "ArchiverMain";
   break;
  case 140:
   event_name = "AutoVacuumMain";
   break;
  case 139:
   event_name = "BgWriterHibernate";
   break;
  case 138:
   event_name = "BgWriterMain";
   break;
  case 137:
   event_name = "CheckpointerMain";
   break;
  case 136:
   event_name = "LogicalApplyMain";
   break;
  case 135:
   event_name = "LogicalLauncherMain";
   break;
  case 134:
   event_name = "PgStatMain";
   break;
  case 133:
   event_name = "RecoveryWalAll";
   break;
  case 132:
   event_name = "RecoveryWalStream";
   break;
  case 131:
   event_name = "SysLoggerMain";
   break;
  case 130:
   event_name = "WalReceiverMain";
   break;
  case 129:
   event_name = "WalSenderMain";
   break;
  case 128:
   event_name = "WalWriterMain";
   break;

 }

 return event_name;
}
