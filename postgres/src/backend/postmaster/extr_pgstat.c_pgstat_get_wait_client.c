
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WaitEventClient ;
__attribute__((used)) static const char *
pgstat_get_wait_client(WaitEventClient w)
{
 const char *event_name = "unknown wait event";

 switch (w)
 {
  case 136:
   event_name = "ClientRead";
   break;
  case 135:
   event_name = "ClientWrite";
   break;
  case 133:
   event_name = "LibPQWalReceiverConnect";
   break;
  case 132:
   event_name = "LibPQWalReceiverReceive";
   break;
  case 131:
   event_name = "SSLOpenServer";
   break;
  case 130:
   event_name = "WalReceiverWaitStart";
   break;
  case 129:
   event_name = "WalSenderWaitForWAL";
   break;
  case 128:
   event_name = "WalSenderWriteData";
   break;
  case 134:
   event_name = "GSSOpenServer";
   break;

 }

 return event_name;
}
