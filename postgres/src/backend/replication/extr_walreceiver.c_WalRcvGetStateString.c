
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WalRcvState ;
__attribute__((used)) static const char *
WalRcvGetStateString(WalRcvState state)
{
 switch (state)
 {
  case 131:
   return "stopped";
  case 132:
   return "starting";
  case 129:
   return "streaming";
  case 128:
   return "waiting";
  case 133:
   return "restarting";
  case 130:
   return "stopping";
 }
 return "UNKNOWN";
}
